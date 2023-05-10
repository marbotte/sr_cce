Management of duplicates in ris files
================
Marius Bottin
2023-05-09

- [1 Extracting and analysing ris
  Files](#1-extracting-and-analysing-ris-files)
  - [1.1 Creating the reading
    function](#11-creating-the-reading-function)
- [2 Extracting fields](#2-extracting-fields)
- [3 Finding duplicates](#3-finding-duplicates)
  - [3.1 function definitions](#31-function-definitions)
    - [3.1.1 finding duplicates](#311-finding-duplicates)
    - [3.1.2 Modifying and writing ris
      objects](#312-modifying-and-writing-ris-objects)
- [4 Application](#4-application)
  - [4.1 Making one file out of multiple
    files](#41-making-one-file-out-of-multiple-files)
  - [4.2 Reading unique file](#42-reading-unique-file)
  - [4.3 description](#43-description)
  - [4.4 Corrections on files](#44-corrections-on-files)
    - [4.4.1 Ebsco publications years](#441-ebsco-publications-years)
  - [4.5 Finding and deleting internal duplicates in Ris
    Files](#45-finding-and-deleting-internal-duplicates-in-ris-files)
- [5 Writing final Ris files](#5-writing-final-ris-files)

``` r
knitr::opts_chunk$set(tidy.opts = list(width.cutoff = 70), tidy = TRUE, cache=F)
def.chunk.hook  <- knitr::knit_hooks$get("chunk")
knitr::knit_hooks$set(chunk = function(x, options) {
  x <- def.chunk.hook(x, options)
  paste0("\n \\", "footnotesize","\n\n", x, "\n\n \\normalsize\n\n")
})
```

# 1 Extracting and analysing ris Files

## 1.1 Creating the reading function

``` r
# This function allows to read a ris files with the following
# obligatory characteristics: - no empty lines except the ones
# between registers - always at least an empty line between 2
# registers - all registers have one and only one title field, except
# for abstract which might be on more than one line - each line
# beginning is the name of a field

regexiseField <- function(field) {
    return(paste0("^(", field, ") +-(.*)$"))
}


read_ris <- function(risFile, keepCompleteRaw = T, extractFields = T, title = "TI",
    multiLine = c("AB")) {
    fileLines <- readLines(risFile)
    emptyLines <- grep("^[::blank::]*$", fileLines)
    lineTypes <- grep("TY +-.*", fileLines)
    sep_registers <- lineTypes[-1] - 1
    # sep_registers <- numeric() for(i in 1:length(emptyLines)){ if(i
    # != length(emptyLines) && emptyLines[i]!=(emptyLines[i+1]-1))
    # sep_registers <- c(sep_registers,emptyLines[i]) }
    titleLines <- grep(regexiseField(title), fileLines)
    abstractLines <- grep(regexiseField("AB"), fileLines)
    stopifnot(length(sep_registers) + 1 == length(titleLines))
    registers <- data.frame(id = 1:(length(sep_registers) + 1), begin = c(1,
        sep_registers + 1), end = c(sep_registers, length(fileLines)))
    idLines <- rep(registers$id, (registers$end - registers$begin) + 1)
    lineFields <- grepl("^[﻿ ]?([A-Z][A-Za-z0-9]) +-.*$", fileLines)
    lineOtherFields <- grepl("^Total Times Cited: +[0-9]+$", fileLines) |
        grepl("^Cited Reference Count: +[0-9]+$", fileLines)
    emptyLinesBool <- grepl("^[::blank::]*$", fileLines)
    fieldName <- rep(NA, length(fileLines))
    fieldName[lineFields] <- gsub("^[﻿ ]?([A-Z][A-Za-z0-9]) +-.*$", "\\1",
        fileLines[lineFields])
    if (!all(is.na(multiLine)) & length(multiLine) > 0) {
        followingMultiLine <- lapply(multiLine, function(x) integer())
        names(followingMultiLine) <- multiLine
        for (m in 1:length(multiLine)) {
            w_field <- grep(regexiseField(multiLine[m]), fileLines)
            for (i in 1:length(w_field)) {
                ct <- (w_field[i] + 1)
                while (!(lineFields[ct] | lineOtherFields[ct])) {
                  followingMultiLine[[m]] <- c(followingMultiLine[[m]],
                    ct)
                  ct <- ct + 1
                }
            }
        }
        if (length(unlist(followingMultiLine))) {
            fieldName[unlist(followingMultiLine)] <- rep(paste(multiLine,
                "f", sep = "_"), sapply(followingMultiLine, length))
        }
    }
    fieldName[lineOtherFields] <- gsub("^([ A-Za-z]+): +([0-9]+)$", "\\1",
        fileLines[lineOtherFields])
    fieldName[emptyLinesBool] <- NA
    if (extractFields) {
        fieldContent <- gsub("^[ ?[A-Z][A-Za-z0-9] +- +(.*)$", "\\1", fileLines)
        fieldContent[grepl("^﻿[ -Z]][A-Za-z0-9] +-$", fileLines)] <- ""
        if (!all(is.na(multiLine)) & length(multiLine) > 0) {
            fieldContent[unlist(followingMultiLine)] <- gsub("^ *([A-Za-z0-9].*)$",
                "\\1", fileLines[unlist(followingMultiLine)])
        }
        fieldContent[lineOtherFields] <- gsub("^([ A-Za-z]+): +([0-9]+)$",
            "\\2", fileLines[lineOtherFields])
        fieldContent[emptyLinesBool] <- NA
    }
    res <- list(nbRecords = max(registers$id), registers = registers, fieldName = fieldName,
        lineRegId = idLines)
    if (keepCompleteRaw) {
        res$raw <- fileLines
    }
    if (extractFields) {
        res$content <- fieldContent
    }
    return(res)
}
```

# 2 Extracting fields

``` r
# There are various ways to use the RIS norm in the platforms which
# export them. For example, why the norm states that Abstract of
# articles should be put in the 'N2' field, Scopus and web of science
# put it in the 'AB' field Therefore, in order to keep the data from
# the original file as untouched as possible, we put a table
# 'synoFields' in the object and we apply the synonymy in the object
# only at the moment of extracting fields

synoFields <- function(extractedRis, fieldFrom = c("T1", "N2"), fieldTo = c("TI",
    "AB")) {
    tab <- data.frame(from = fieldFrom, to = fieldTo)
    if ("synoFields" %in% names(extractedRis)) {
        extractedRis$synoFields <- unique(rbind.data.frame(extractedRis$synoFields,
            tab))
    } else {
        extractedRis$synoFields <- tab
    }
    return(extractedRis)
}

extractFields <- function(extractedRis, fields = c("DO", "TI", "AU"), sep = "|") {
    # Apply synonyms
    if ("synoFields" %in% names(extractedRis)) {
        for (i in 1:nrow(extractedRis$synoFields)) {
            extractedRis$fieldName <- sub(paste0("^", extractedRis$synoFields$from[i]),
                extractedRis$synoFields$to[i], extractedRis$fieldName)
        }
    }
    # Are fields unique by record
    tab <- data.frame(fieldName = extractedRis$fieldName[!is.na(extractedRis$fieldName) &
        extractedRis$fieldName %in% fields], record = extractedRis$lineRegId[!is.na(extractedRis$fieldName) &
        extractedRis$fieldName %in% fields], content = extractedRis$content[!is.na(extractedRis$fieldName) &
        extractedRis$fieldName %in% fields])
    f_multi <- sapply(by(tab, INDICES = tab$fieldName, FUN = duplicated),
        any)
    #
    reg <- extractedRis$registers$id
    no_multi_field <- names(f_multi)[!f_multi]
    tab2 <- tab[tab$fieldName %in% no_multi_field, ]
    if (any(f_multi)) {
        multi_field <- names(f_multi)[f_multi]
        names(multi_field) <- multi_field
        dataMF <- lapply(multi_field, function(f, t, s) tapply(t$content[t$fieldName ==
            f], t$record[t$fieldName == f], paste, collapse = s), t = tab,
            s = sep)
        dataMF_tab <- data.frame(fieldName = rep(names(dataMF), sapply(dataMF,
            length)), record = as.numeric(unlist(lapply(dataMF, names))),
            content = unlist(dataMF))
        tab2 <- rbind(tab2, dataMF_tab)
    }
    COLS <- unique(as.character(tab2$fieldName))
    ROWS <- unique(as.character(extractedRis$registers$id))
    arr.which <- cbind(row = match(as.character(tab2$record), ROWS), col = match(tab2$fieldName,
        COLS))
    res <- matrix(nrow = length(ROWS), ncol = length(COLS), dimnames = list(as.character(ROWS),
        COLS))
    res[arr.which] <- tab2$content
    return(as.data.frame(cbind(id = ROWS, res)))
}
```

# 3 Finding duplicates

In order to find duplicate when comparing ris files, we will use the
following steps:

1.  documents having the same doi will be tested for resemblance in
    their titles considered duplicates, if they are not chapters of a
    book, because those may be referenced with the DOI of the book…
2.  documents not having a DOI will be compared (between them and with
    the ones having a doi) in terms of resemblance in their titles and
    years. If they have a very similar title and a maximum of one year
    difference, they will be considered as duplicates.

In order to compare titles: 1. we suppress all the characters which are
not classical letters (space, punctuation, etc.) 1. we put every
character in lower case 1. we compare strings

At first we used the following distance-based string comparation: String
Alignment distance (restricted Damerau-Levenshtein distance), divide it
by the length of the smallest string. Values inferior to 0.05 are
considered identical, i.e. if less than 5% of the characters of the
smallest string must be added or modified to obtain the larger one, they
are considered identical. However, some obviously different documents
were considered duplicates, so we now just consider exact matches in
modified titles. The result is that some of the duplicates are not
found, but no false dupe is deleted.

Also note that if 2 documents have the same title and year but have
different type, the articles and book chapters will have the priority
over the conferences (for the duplicate which will be kept in the ris
file).

## 3.1 function definitions

### 3.1.1 finding duplicates

``` r
stopifnot(require(stringdist))
```

    ## Loading required package: stringdist

``` r
risInternalDuplicate <- function(extractedRis, priority = c("JOUR", "CHAP")) {
    AcceptedDupli <- DupliToCheck <- data.frame()
    tabFields <- extractFields(extractedRis = extractedRis, c("DO", "TI",
        "PY", "AU", "TY"))
    tabFields$title_simp <- tolower(gsub("[^A-Za-z0-9]", "", tabFields$TI,
        perl = T))
    # Searching duplicated DOI
    tabFields_do <- tabFields[!is.na(tabFields$DO) & tabFields$TY != "CHAP",
        ]
    do_d <- duplicated(tabFields_do$DO)
    doDupli <- unique(tabFields_do[do_d, "DO"])
    toTest <- lapply(doDupli, function(x, tab) tab[tab$DO == x, ], tab = tabFields_do)
    if (length(toTest) > 0) {
        tested <- sapply(toTest, function(x) {
            length(unique(x$title_simp)) == 1
        })
        if (any(!tested)) {
            sapply(toTest[!tested], function(x) warning("\nRecords: ",
                paste(x$id, collapse = ","), "\nhave the same DOI (", unique(x$DO),
                ") but differences in their titles:\n", paste(x$TI, collapse = "\n"),
                "\n\nthey will NOT be considered as duplicates\n"))
        }
        AcceptedDupli <- rbind(AcceptedDupli, Reduce(rbind, lapply(toTest[tested],
            function(x, p) {
                tab <- x[order(match(x$TY, p)), ]
                data.frame(step = "doi", ref = tab$id[1], toSupp = tab$id[2:nrow(x)])
            }, p = priority)))
        DupliToCheck <- rbind(DupliToCheck, Reduce(rbind, lapply(toTest[!tested],
            function(x) data.frame(step = "doi", ref = x$id[1], toSupp = x$id[2:nrow(x)]))))
    }
    # Searching duplicated titles and years (max difference:1) (both
    # either do not have DOI or are chapters)
    tabFields_tiye <- tabFields[is.na(tabFields$DO) | tabFields$TY == "CHAP",
        ]
    tabFields_tiye <- tabFields_tiye[!is.na(tabFields_tiye$PY), ]
    title_simp_dup <- unique(tabFields_tiye$title_simp[duplicated(tabFields_tiye$title_simp)])
    toTest <- by(tabFields_tiye[which(tabFields_tiye$title_simp %in% title_simp_dup),
        ], tabFields_tiye$title_simp[tabFields_tiye$title_simp %in% title_simp_dup],
        function(x) x)
    if (length(toTest) > 0) {
        diff_Ymax1 <- sapply(toTest, function(x) diff(range(as.numeric(x$PY))) <=
            1)
        sameType <- sapply(toTest, function(x) length(unique(x$TY)) ==
            1)
        sameAuth <- sapply(toTest, function(x) length(unique(x$AU)) ==
            1)
        if (any(diff_Ymax1 & (!sameAuth | !sameType))) {
            {
                sapply(toTest[diff_Ymax1 & (!sameAuth | !sameType)], function(x) warning("\nRecords: ",
                  paste(x$id, collapse = ","), "\nhave comparable titles and pulication years \n(",
                  paste(unique(x$TI), collapse = "\n"), ")\n but have differences in their authors and/or types:\n\nNote that they will be considered as duplicates\n"))
            }
        }
        if (any(!diff_Ymax1)) {
            {
                sapply(toTest[!diff_Ymax1], function(x) warning("\nRecords: ",
                  paste(x$id, collapse = ","), "\nhave comparable titles (",
                  paste(unique(x$TI), collapse = "\n"), ") but have a difference of more than one publication year!\n\nNote that they WONT be considered as duplicates\n"))
            }
        }
        AcceptedDupli <- rbind(AcceptedDupli, Reduce(rbind, lapply(toTest[diff_Ymax1],
            function(x, p, a) {
                tab <- x[order(match(x$TY, p), !x$id %in% a), ]
                return(data.frame(step = "ti_ye_noDoi", ref = tab$id[1],
                  toSupp = tab$id[2:nrow(x)]))
            }, p = priority, a = AcceptedDupli$ref)))
        DupliToCheck <- rbind(DupliToCheck, Reduce(rbind, lapply(toTest[!diff_Ymax1],
            function(x, p) {
                tab <- x[order(match(x$TY, p)), ]
                return(data.frame(step = "ti_ye_noDoi", ref = tab$id[1],
                  toSupp = tab$id[2:nrow(x)]))
            }, p = priority)))
    }
    # Searching duplicated titles and years (max difference:1) (one
    # of them do not have DOI or is a chapter)
    m_tiye_do <- match(tabFields_tiye$title_simp, tabFields_do$title_simp)
    if (sum(!is.na(m_tiye_do))) {
        title_simp_dup <- tabFields_tiye$title_simp[!is.na(m_tiye_do)]
        toTest <- by(tabFields[tabFields$title_simp %in% title_simp_dup,
            ], tabFields$title_simp[tabFields$title_simp %in% title_simp_dup],
            function(x) x)
        diff_Ymax1 <- sapply(toTest, function(x) diff(range(as.numeric(x$PY))) <=
            1)
        sameType <- sapply(toTest, function(x) length(unique(x$TY)) ==
            1)
        sameAuth <- sapply(toTest, function(x) length(unique(x$AU)) ==
            1)
        if (any(diff_Ymax1 & (!sameAuth | !sameType))) {
            {
                sapply(toTest[diff_Ymax1 & (!sameAuth | !sameType)], function(x) warning("\nRecords: ",
                  paste(x$id, collapse = ","), "\nhave comparable titles and pulication years \n(",
                  paste(unique(x$TI), collapse = "\n"), ")\n but have differences in their authors and/or types:\n\nNote that they will be considered as duplicates\n"))
            }
        }
        if (any(!diff_Ymax1)) {
            {
                sapply(toTest[!diff_Ymax1], function(x) warning("\nRecords: ",
                  paste(x$id, collapse = ","), "\nhave comparable titles (",
                  paste(unique(x$TI), collapse = "\n"), ") but have a difference of more than one publication year!\n\nNote that they WONT be considered as duplicates\n"))
            }
        }
        AcceptedDupli <- rbind(AcceptedDupli, Reduce(rbind, lapply(toTest[diff_Ymax1],
            function(x, p) {
                tab <- x[order(match(x$TY, p)), ]
                return(data.frame(step = "ti_ye_1Doi", ref = tab$id[1],
                  toSupp = tab$id[2:nrow(x)]))
            }, p = priority)))
        DupliToCheck <- rbind(DupliToCheck, Reduce(rbind, lapply(toTest[!diff_Ymax1],
            function(x, p) {
                tab <- x[order(match(x$TY, p)), ]
                return(data.frame(step = "ti_ye_1Doi", ref = tab$id[1],
                  toSupp = tab$id[2:nrow(x)]))
            }, p = priority)))
    }
    # Checking that we dont suppress a document which is the
    # reference a couple of duplicates If documents are cited more
    # than once in AcceptedDupli, we need to make groups
    nbSeen <- table(c(unique(AcceptedDupli$ref), AcceptedDupli$toSupp))
    if (any(nbSeen > 1)) {
        gps = data.frame(gp = 1, id = c(AcceptedDupli[1, "ref"], AcceptedDupli[1,
            "toSupp"]))
        for (i in 2:nrow(AcceptedDupli)) {
            if (!AcceptedDupli$ref[i] %in% gps$id & !AcceptedDupli$toSupp[i] %in%
                gps$id)
                gps <- rbind(gps, data.frame(gp = max(gps$gp) + 1, id = c(AcceptedDupli[i,
                  "ref"], AcceptedDupli[i, "toSupp"])))
            if (AcceptedDupli$ref[i] %in% gps$id & AcceptedDupli$toSupp[i] %in%
                gps$id) {
                gpAlready <- gps$gp[gps$id == AcceptedDupli$ref[i] | gps$id ==
                  AcceptedDupli$toSupp[i]]
                gp <- min(gpAlready)
                gps$gp[gps$gp %in% gpAlready] <- gp
            }
            if (AcceptedDupli$ref[i] %in% gps$id & !AcceptedDupli$toSupp[i] %in%
                gps$id) {
                gp <- gps$gp[gps$id == AcceptedDupli$ref[i]]
                gps <- rbind(gps, data.frame(gp = gp, id = c(AcceptedDupli[i,
                  "toSupp"])))
            }
            if (!AcceptedDupli$ref[i] %in% gps$id & AcceptedDupli$toSupp[i] %in%
                gps$id) {
                gp <- gps$gp[gps$id == AcceptedDupli$toSupp[i]]
                gps <- rbind(gps, data.frame(gp = gp, id = c(AcceptedDupli[i,
                  "ref"])))
            }

        }
        gps <- gps[order(gps$gp), ]
        gpList <- tapply(gps$id, gps$gp, function(x, t) t[x, ], t = tabFields)
        nbRefGp <- sapply(gpList, nrow)
        AD_gp <- gps$gp[match(AcceptedDupli$ref, gps$id)]
        AcceptedDupli <- AcceptedDupli[nbRefGp[as.character(AD_gp)] ==
            2, ]
        AcceptedDupli <- rbind(AcceptedDupli, Reduce(rbind, lapply(gpList[nbRefGp >
            2], function(x, p) {
            tab <- x[order(match(x, p)), ]
            return(data.frame(step = "reorganization", ref = tab$id[1],
                toSupp = tab$id[2:nrow(x)]))
        }, p = priority)))
    }
    return(list(tabInfo = tabFields, accepted_dupes = AcceptedDupli, to_check_dupes = DupliToCheck,
        toSupp = AcceptedDupli$toSupp))
}

compareRisDuplicate <- function(risToFilter, risReference) {
    # DOI
    AcceptedDupli <- DupliToCheck <- data.frame()
    rf_fieldTab <- extractFields(extractedRis = risToFilter, c("DO", "TI",
        "PY", "AU", "TY"))
    rr_fieldTab <- extractFields(extractedRis = risReference, c("DO", "TI",
        "PY", "AU", "TY"))
    rf_fieldTab$title_simp <- tolower(gsub("[^A-Za-z0-9]", "", rf_fieldTab$TI,
        perl = T))
    rr_fieldTab$title_simp <- tolower(gsub("[^A-Za-z0-9]", "", rr_fieldTab$TI,
        perl = T))
    # Searching duplicated DOI
    rr_fieldTab_do <- rr_fieldTab[!is.na(rr_fieldTab$DO) & rr_fieldTab$TY !=
        "CHAP", ]
    rf_fieldTab_do <- rf_fieldTab[!is.na(rf_fieldTab$DO) & rf_fieldTab$TY !=
        "CHAP", ]
    do_dupes <- unique(rf_fieldTab_do$DO[rf_fieldTab_do$DO %in% rr_fieldTab_do$DO])
    toTest <- lapply(do_dupes, function(x, a, b) rbind(data.frame(ref = F,
        a[a$DO == x, ]), data.frame(ref = T, b[b$DO == x, ])), a = rf_fieldTab_do,
        b = rr_fieldTab_do)
    tab <- Reduce(rbind, lapply(toTest, function(x) {
        m <- match(x[!x$ref, "title_simp"], x[x$ref, "title_simp"])
        data.frame(toSupp = x[!x$ref, "id"], ref = x[x$ref, "id"][m])
    }))
    if (!is.null(tab) && as.logical(nrow(tab)) && sum(!is.na(tab$ref)) >
        0) {
        AcceptedDupli <- rbind(AcceptedDupli, data.frame(step = "doi",
            tab[!is.na(tab$ref), c("ref", "toSupp")]))
    }
    pbs <- Reduce(rbind, lapply(toTest, function(x) {
        pb <- x[!x$ref, "id"][!x[!x$ref, "title_simp"] %in% x[x$ref, "title_simp"]]
        if (length(pb) > 0) {
            data.frame(toSupp = pb, ref = x[x$ref, "id"])
        }
    }))
    if (!is.null(pbs) && nrow(pbs) > 0) {
        DupliToCheck <- rbind(AcceptedDupli, data.frame(step = "doi", tab[,
            c("ref", "toSupp")]))
    }
    # No Doi
    rr_fieldTab_tiye <- rr_fieldTab[is.na(rr_fieldTab$DO) | rr_fieldTab$TY ==
        "CHAP", ]
    rf_fieldTab_tiye <- rf_fieldTab[is.na(rf_fieldTab$DO) | rf_fieldTab$TY ==
        "CHAP", ]
    tisimp_dupes <- unique(rf_fieldTab_tiye$title_simp[rf_fieldTab_tiye$title_simp %in%
        rr_fieldTab_tiye$title_simp])
    toTest <- lapply(tisimp_dupes, function(x, a, b) rbind(data.frame(ref = F,
        a[a$title_simp == x, ]), data.frame(ref = T, b[b$title_simp ==
        x, ])), a = rf_fieldTab_tiye, b = rr_fieldTab_tiye)
    ok <- sapply(toTest, function(x) (diff(range(as.integer(x$PY))) <=
        1))
    if (any(ok)) {
        AcceptedDupli <- rbind(AcceptedDupli, Reduce(rbind, lapply(toTest[ok],
            function(x) data.frame(step = "no_doi", ref = x$id[x$ref],
                toSupp = x$id[!x$ref]))))
    }
    if (any(!ok)) {
        DupliToCheck <- rbind(DupliToCheck, Reduce(rbind, lapply(toTest[!ok],
            function(x) data.frame(step = "no_doi", ref = x$id[x$ref],
                toSupp = x$id[!x$ref]))))
    }
    # ref no doi
    tisimp_dupes <- unique(rf_fieldTab_do$title_simp[rf_fieldTab_do$title_simp %in%
        rr_fieldTab_tiye$title_simp])
    toTest <- lapply(tisimp_dupes, function(x, a, b) rbind(data.frame(ref = F,
        a[a$title_simp == x, ]), data.frame(ref = T, b[b$title_simp ==
        x, ])), a = rf_fieldTab_do, b = rr_fieldTab_tiye)
    ok <- sapply(toTest, function(x) (diff(range(as.integer(x$PY))) <=
        1))
    if (any(ok)) {
        AcceptedDupli <- rbind(AcceptedDupli, Reduce(rbind, lapply(toTest[ok],
            function(x) data.frame(step = "ref_no_doi", ref = x$id[x$ref],
                toSupp = x$id[!x$ref]))))
    }
    if (any(!ok)) {
        DupliToCheck <- rbind(DupliToCheck, Reduce(rbind, lapply(toTest[!ok],
            function(x) data.frame(step = "ref_no_doi", ref = x$id[x$ref],
                toSupp = x$id[!x$ref]))))
    }
    # fil no doi
    tisimp_dupes <- unique(rf_fieldTab_tiye$title_simp[rf_fieldTab_tiye$title_simp %in%
        rr_fieldTab_do$title_simp])
    toTest <- lapply(tisimp_dupes, function(x, a, b) rbind(data.frame(ref = F,
        a[a$title_simp == x, ]), data.frame(ref = T, b[b$title_simp ==
        x, ])), a = rf_fieldTab_tiye, b = rr_fieldTab_do)
    ok <- sapply(toTest, function(x) (diff(range(as.integer(x$PY))) <=
        1))
    if (any(ok)) {
        AcceptedDupli <- rbind(AcceptedDupli, Reduce(rbind, lapply(toTest[ok],
            function(x) data.frame(step = "fil_no_tiye", ref = x$id[x$ref],
                toSupp = x$id[!x$ref]))))
    }
    if (any(!ok)) {
        DupliToCheck <- rbind(DupliToCheck, Reduce(rbind, lapply(toTest[!ok],
            function(x) data.frame(step = "fil_no_tiye", ref = x$id[x$ref],
                toSupp = x$id[!x$ref]))))
    }
    message(paste(length(unique(AcceptedDupli$toSupp)), "/", risToFilter$nbRecords,
        "records are already in the reference file"))
    return(list(tabInfoRef = rr_fieldTab, tabInfoFil = rf_fieldTab, accepted_dupes = AcceptedDupli,
        to_check_dupes = DupliToCheck, toSupp = unique(AcceptedDupli$toSupp)))
}
```

### 3.1.2 Modifying and writing ris objects

``` r
writeRis <- function(extractedRis, filename = tempfile()) {
    writeLines(extractedRis$raw, con = filename)
    return(filename)
}

filterRis <- function(extractedRis, idToSupp, writeFile = NA) {
    filteredRis <- list()
    linesToSupp <- extractedRis$lineRegId %in% idToSupp
    filteredRis$fieldName <- extractedRis$fieldName[!linesToSupp]
    if ("raw" %in% names(extractedRis)) {
        filteredRis$raw <- extractedRis$raw[!linesToSupp]
    }
    if ("content" %in% names(extractedRis)) {
        filteredRis$content <- extractedRis$content[!linesToSupp]
    }
    filteredRis$lineRegId <- extractedRis$lineRegId[!linesToSupp]
    filteredRis$registers <- data.frame(id = unique(filteredRis$lineRegId),
        begin = tapply(1:length(filteredRis$lineRegId), filteredRis$lineRegId,
            min), end = tapply(1:length(filteredRis$lineRegId), filteredRis$lineRegId,
            max))
    filteredRis$nbRecords <- nrow(filteredRis$registers)
    if (!"nbDeleted" %in% names(extractedRis)) {
        filteredRis$nbDeleted <- extractedRis$nbRecords - filteredRis$nbRecords
    } else {
        filteredRis$nbDeleted <- extractedRis$nbDeleted + (extractedRis$nbRecords -
            filteredRis$nbRecords)
    }
    if (any(!names(extractedRis) %in% names(filteredRis))) {
        filteredRis <- c(filteredRis, extractedRis[!names(extractedRis) %in%
            names(filteredRis)])
    }
    if (!is.na(writeFile)) {
        print(paste(writeRis(filteredRis, filename = writeFile), "written!"))
    }
    return(filteredRis)
}
```

# 4 Application

## 4.1 Making one file out of multiple files

``` r
dirProquest <- "../../Search/Results/proquest ana /"
fileProquest <- tempfile()
writeLines(unlist(lapply(paste0(dirProquest, dir(dirProquest, pattern = "ris")),
    function(x) c(readLines(x), ""))), con = fileProquest)

dirInformit <- "../../Search/Results/informit/"
fileInformit <- tempfile()
writeLines(unlist(lapply(paste0(dirInformit, dir(dirInformit, pattern = "ris")),
    function(x) c(readLines(x), ""))), con = fileInformit)

dirWosCore <- "../../Search/Results/wosCore20230503/"
fileWosCore <- tempfile()
writeLines(unlist(lapply(paste0(dirWosCore, dir(dirWosCore, pattern = "ris")),
    function(x) c(readLines(x), ""))), con = fileWosCore)


proquest <- read_ris(fileProquest, title = "T1")
proquest <- synoFields(proquest)
informit <- read_ris(fileInformit, title = "T1", multiLine = "N2")
informit <- synoFields(informit)
wosCore <- read_ris(fileWosCore)
```

## 4.2 Reading unique file

``` r
ebsco <- read_ris("../../Search/Results/EbscoJames/620fd6a2-22fd-429e-aa34-9bd22d3fffed.ris",
    title = "T1")
ebsco <- synoFields(ebsco)
embase <- read_ris("../../Search/Results/Embase20230418/records.ris", title = "T1",
    multiLine = "N2")
embase <- synoFields(embase, c("T1", "N2", "Y1", "A1"), c("TI", "AB", "PY",
    "AU"))
angel <- read_ris("../../Search/Results/angelGene20230502/angelgene.ris")
scopus <- read_ris("../../Search/Results/scopus20230503/scopus.ris")
wosScielo <- read_ris("../../Search/Results/wosSciELO20230503/savedrecs.ris")
```

## 4.3 description

``` r
dataList <- c("scopus", "wosCore", "wosScielo", "embase", "ebsco", "proquest",
    "informit", "angel")
lapply(mget(dataList), function(x) table(x$fieldName))
```

    ## $scopus
    ## 
    ##    A2    AB    AD    AU    C2    C7    DB    DO    EP    ER    IS    J2    KW 
    ##   507  5060 11392 16450   760   839  5125  4513  4071  5125  3815  5107 61519 
    ##    LA    M3    N1    PB    PY    SN    SP    ST    T2    TI    TY    UR    VL 
    ##  5125  5125  5125  3921  5125  5085  4107   327  5123  5125  5125  5125  4486 
    ## 
    ## $wosCore
    ## 
    ##                    A1                    AB                  AB_f 
    ##                    16                  3080                  1418 
    ##                    AD                    AN                    AU 
    ##                  8172                  3123                 11438 
    ##                    C3                    C6                    C7 
    ##                  9026                   642                   724 
    ## Cited Reference Count                    CP                    CR 
    ##                  3123                    33                168644 
    ##                    DA                    DO                    ED 
    ##                  2536                  2882                    12 
    ##                    EP                    ER                    FU 
    ##                  2315                  3123                  1189 
    ##                    FX                    IS                    J9 
    ##                  1185                  2522                  3123 
    ##                    JI                    KW                    LA 
    ##                  3120                 30865                  3123 
    ##                    MA                    N1                    PA 
    ##                     4                  3123                  3123 
    ##                    PI                    PU                    PY 
    ##                  3123                  3123                  3003 
    ##                    SN                    SP                    T2 
    ##                  5273                  2315                  3123 
    ##                    TI     Total Times Cited                    TY 
    ##                  3123                  3123                  3123 
    ##                    VL                    WE 
    ##                  2957                  3798 
    ## 
    ## $wosScielo
    ## 
    ##  AB  AN  AU  DA  DO  EP  ER  IS  M3  PA  PI  PU  PY  SP  T2  TI  TY  VL  X1  X4 
    ## 172 172 561 172 109 171 172 156 172  36  36 172 172 171 172 172 172 163 150 114 
    ##  Y1  Y4  Z1  Z4 
    ##  32  71   3   4 
    ## 
    ## $embase
    ## 
    ##  A1  AD  C5  DB  DO  EP  ER  IS  JF  JO  KW  L2  LA  M1  M3  N2  SN  SP  T1  T2 
    ## 105  19  20  41  25  11  25  22  25  25 378  25  25  84  25  23  42  12  25   1 
    ##  TY  U2  U3  U4  UR  VL  Y1 
    ##  25  25   9  25  25  25  25 
    ## 
    ## $ebsco
    ## 
    ##    AB    AD    AN    AU    AV    CY    DB    DO    DP    ED    EP    ER    ID 
    ##  3964   225  1236  7507  1806    93  4080   353  4080   153  2482  4080  1236 
    ##    IS    JA    JF    JO    KW    L3    N1    PB    PY    SN    SP    T1    T2 
    ##  2650   333  1143  3176 17063     1  4080  3253  2839  3725  2570  4080    66 
    ##    T3    TY    U1    U2    UR    VL    Y1 
    ##    40  4080    70    14  5754  2687  1236 
    ## 
    ## $proquest
    ## 
    ##    A2    AB  AB_f    AD    AN    AU    CY    DA    DB    DO    EP    ER    ET 
    ##    11  1681   884   550  1855  6266  1823  1823  1855  1302   973  1855     3 
    ##    IS    JF    KW    L1    L2    LA    N1    PB    PP    PY    SN    SP    T1 
    ##  1562  1855 34541  1548     1  1855  5104  1787  1819  1855  1199  1459  1855 
    ##    T2    TT    TY    UR    VL    Y1 
    ##    32    55  1855  1855  1703  1823 
    ## 
    ## $informit
    ## 
    ##   AD   AN   AU   CY   DO   DP   EP   ER   IS   JF   KW   L1   L2   LA   M3   N1 
    ##  383  586  732  576    4  586  477  586  537  581 2796  574  586  586  581    2 
    ##   N2   PB   PY   SN   SP   T1   T2   TY   UR   VL   Y1   Y2 
    ##  549  583  586  616  581  586  581  586  586  479  586  586 
    ## 
    ## $angel
    ## 
    ## AB AU ER SN TI TY UR 
    ##  1  3  1  1  1  1  1

``` r
lapply(mget(dataList), function(x) table(x$content[x$fieldName == "PY"]))
```

    ## $scopus
    ## 
    ## 1973 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 
    ##    1    6    2    4    7    5    3    4   12    6   10   11    8   11   13    8 
    ## 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 
    ##    8   18    9   10   15   18   18   27   45   34   32   31   41   47   33   52 
    ## 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 
    ##   71   73   91  110  112  131  164  197  183  215  223  261  282  330  389  452 
    ## 2021 2022 2023 
    ##  534  570  188 
    ## 
    ## $wosCore
    ## 
    ## 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 
    ##   21   24   27   23   30   25   33   51   63   61   60   72  106  100   95  123 
    ## 2016 2017 2018 2019 2020 2021 2022 2023 
    ##  137  157  242  294  329  396  421  113 
    ## 
    ## $wosScielo
    ## 
    ## 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 
    ##    2    3    4    2    2    6    5    8    5    4   11   12    8    5   15   19 
    ## 2020 2021 2022 2023 
    ##   22   22   16    1 
    ## 
    ## $embase
    ## < table of extent 0 >
    ## 
    ## $ebsco
    ## 
    ## 1953/01/01/ 1959/01/01/ 1961/01/01/ 1962/01/01/ 1963/01/01/ 1964/01/01/ 
    ##           1           1           1           3           4           5 
    ## 1965/01/01/ 1965/10/01/ 1966/01/01/ 1967/01/01/ 1968/01/01/ 1969/01/01/ 
    ##           6           1           4          11           8          27 
    ## 1970/01/01/ 1971/01/01/ 1972/01/01/ 1973/01/01/ 1974/01/01/ 1974/03/15/ 
    ##          22          20          22          32          26           1 
    ## 1975/01/01/ 1976/01/01/ 1977/01/01/ 1978/01/01/ 1978/10/01/ 1978/12/01/ 
    ##          15          22          22          25           1           1 
    ## 1978/12/15/ 1979/01/01/ 1979/02/01/ 1979/03/01/ 1979/04/01/ 1979/05/01/ 
    ##           2          18           1           1           2           1 
    ## 1979/06/01/ 1979/08/01/ 1979/09/15/ 1979/10/01/ 1979/12/01/ 1980/01/01/ 
    ##           1           1           1           4           3          31 
    ## 1980/02/01/ 1980/03/01/ 1980/04/01/ 1980/05/01/ 1980/09/01/ 1980/10/01/ 
    ##           2           1           3           1           1           3 
    ## 1980/11/01/ 1980/12/15/ 1981/01/01/ 1981/03/01/ 1981/07/01/ 1981/08/01/ 
    ##           1           1          26           1           1           1 
    ## 1981/12/01/ 1982/01/01/ 1982/02/01/ 1982/05/01/ 1982/10/01/ 1982/12/01/ 
    ##           1          27           3           1           1           2 
    ## 1983/01/01/ 1983/03/01/ 1983/05/01/ 1983/06/15/ 1983/09/01/ 1983/09/15/ 
    ##          22           1           1           1           1           1 
    ## 1983/10/01/ 1983/11/01/ 1983/12/15/ 1984/01/01/ 1984/03/01/ 1984/04/01/ 
    ##           2           1           2          22           1           1 
    ## 1984/05/01/ 1984/06/01/ 1984/06/15/ 1984/09/15/ 1984/12/01/ 1984/12/15/ 
    ##           1           2           1           2           1           1 
    ## 1985/01/01/ 1985/03/01/ 1985/03/15/ 1985/04/01/ 1985/06/15/ 1985/09/15/ 
    ##          31           1           1           1           1           1 
    ## 1985/11/01/ 1986/01/01/ 1986/02/01/ 1986/03/15/ 1986/04/01/ 1986/05/01/ 
    ##           2          24           1           1           2           1 
    ## 1986/06/15/ 1986/08/01/ 1986/09/15/ 1986/12/01/ 1986/12/15/ 1987/01/01/ 
    ##           1           1           1           3           1          30 
    ## 1987/02/01/ 1987/03/01/ 1987/06/01/ 1987/06/15/ 1987/09/01/ 1987/09/15/ 
    ##           1           1           1           1           3           1 
    ## 1987/12/01/ 1988/01/01/ 1988/02/01/ 1988/03/01/ 1988/03/15/ 1988/05/01/ 
    ##           1          24           1           2           1           1 
    ## 1988/06/15/ 1988/08/01/ 1988/09/01/ 1988/09/15/ 1988/10/01/ 1988/12/15/ 
    ##           2           1           3           1           1           3 
    ## 1989/01/01/ 1989/03/01/ 1989/04/01/ 1989/05/01/ 1989/06/15/ 1989/09/15/ 
    ##          31           1           1           2           1           1 
    ## 1989/10/01/ 1990/01/01/ 1990/03/01/ 1990/03/15/ 1990/04/01/ 1990/06/01/ 
    ##           1          34           2           2           1           1 
    ## 1990/11/01/ 1990/12/01/ 1991/01/01/ 1991/03/01/ 1991/06/15/ 1991/07/01/ 
    ##           3           2          30           1           1           1 
    ## 1991/08/01/ 1991/09/01/ 1991/09/15/ 1991/11/01/ 1991/12/15/ 1992/01/01/ 
    ##           1           2           1           1           2          38 
    ## 1992/02/01/ 1992/03/01/ 1992/03/15/ 1992/04/01/ 1992/06/15/ 1992/09/15/ 
    ##           1           1           1           1           1           1 
    ## 1992/10/01/ 1992/12/01/ 1992/12/15/ 1993/01/01/ 1993/03/15/ 1993/04/01/ 
    ##           1           1           1          21           1           2 
    ## 1993/05/01/ 1993/06/15/ 1993/07/01/ 1993/09/01/ 1993/09/15/ 1993/11/01/ 
    ##           2           2           1           1           1           2 
    ## 1993/12/01/ 1994/01/01/ 1994/03/15/ 1994/05/01/ 1994/06/01/ 1994/06/15/ 
    ##           1          31           3           1           1           1 
    ## 1994/09/01/ 1994/09/15/ 1994/10/01/ 1994/11/01/ 1994/12/01/ 1995/01/01/ 
    ##           3           1           1           2           1          21 
    ## 1995/03/01/ 1995/03/15/ 1995/05/01/ 1995/09/15/ 1995/11/01/ 1995/12/01/ 
    ##           1           3           1           3           2           2 
    ## 1995/12/15/ 1996/01/01/ 1996/02/01/ 1996/03/01/ 1996/07/01/ 1996/09/15/ 
    ##           2          24           2           1           1           1 
    ## 1996/10/01/ 1996/11/01/ 1996/12/15/ 1997/01/01/ 1997/04/01/ 1997/05/01/ 
    ##           1           1           3          26           1           2 
    ## 1997/06/15/ 1997/07/01/ 1997/08/01/ 1997/09/01/ 1997/09/15/ 1997/10/01/ 
    ##           1           1           1           1           2           1 
    ## 1997/12/01/ 1997/12/15/ 1998/01/01/ 1998/03/01/ 1998/03/15/ 1998/09/01/ 
    ##           3           1          29           1           1           1 
    ## 1998/09/15/ 1998/10/01/ 1998/11/01/ 1998/12/01/ 1998/12/15/ 1999/01/01/ 
    ##           1           1           2           1           1          24 
    ## 1999/02/01/ 1999/03/01/ 1999/06/15/ 1999/08/01/ 1999/09/01/ 1999/10/01/ 
    ##           1           1           1           1           1           2 
    ## 1999/11/01/ 1999/12/01/ 1999/12/15/ 2000/01/01/ 2000/03/01/ 2000/03/15/ 
    ##           1           2           2          35           2           2 
    ## 2000/04/01/ 2000/05/01/ 2000/06/01/ 2000/06/15/ 2000/07/01/ 2000/09/01/ 
    ##           2           2           1           2           2           3 
    ## 2000/09/15/ 2000/10/01/ 2000/12/01/ 2000/12/15/ 2001/01/01/ 2001/03/15/ 
    ##           1           2           1           3          21           2 
    ## 2001/05/01/ 2001/06/01/ 2001/06/15/ 2001/09/15/ 2001/10/01/ 2001/11/01/ 
    ##           2           1           4           3           2           2 
    ## 2001/12/01/ 2001/12/15/ 2002/01/01/ 2002/03/15/ 2002/04/01/ 2002/07/01/ 
    ##           1           3          25           3           1           1 
    ## 2002/09/01/ 2002/09/15/ 2002/11/01/ 2002/12/15/ 2003/01/01/ 2003/03/15/ 
    ##           1           2           2           1          24           1 
    ## 2003/06/15/ 2003/09/01/ 2003/09/15/ 2003/10/01/ 2003/11/01/ 2003/12/15/ 
    ##           2           1           1           1           1           1 
    ## 2004/01/01/ 2004/02/01/ 2004/03/01/ 2004/03/15/ 2004/04/01/ 2004/06/15/ 
    ##          17           1           2           2           1           2 
    ## 2004/07/01/ 2004/09/15/ 2004/10/01/ 2004/11/01/ 2004/12/01/ 2004/12/15/ 
    ##           1           2           1           1           4           1 
    ## 2005/01/01/ 2005/02/01/ 2005/03/01/ 2005/03/15/ 2005/04/01/ 2005/05/01/ 
    ##          17           5           2           2           3           3 
    ## 2005/09/01/ 2005/09/15/ 2005/11/01/ 2005/12/15/ 2006/01/01/ 2006/02/01/ 
    ##           1           1           5           1          15           1 
    ## 2006/03/01/ 2006/03/15/ 2006/04/01/ 2006/05/01/ 2006/06/01/ 2006/06/15/ 
    ##           4           2           2           2           3           1 
    ## 2006/07/01/ 2006/09/01/ 2006/10/01/ 2006/11/01/ 2006/12/01/ 2006/12/15/ 
    ##           2           5           1           1           4           2 
    ## 2007/01/01/ 2007/02/01/ 2007/03/01/ 2007/04/01/ 2007/05/01/ 2007/06/01/ 
    ##          15           2           2           5           2           1 
    ## 2007/06/15/ 2007/07/01/ 2007/08/01/ 2007/09/01/ 2007/10/01/ 2007/11/01/ 
    ##           2           4           1           7           3           4 
    ## 2007/12/01/ 2008/01/01/ 2008/02/01/ 2008/03/01/ 2008/04/01/ 2008/05/01/ 
    ##           2          11           3           1           2           1 
    ## 2008/06/01/ 2008/06/15/ 2008/07/01/ 2008/08/01/ 2008/09/01/ 2008/09/15/ 
    ##           2           1           2           3           3           2 
    ## 2008/10/01/ 2008/12/01/ 2009/01/01/ 2009/03/01/ 2009/03/15/ 2009/04/01/ 
    ##           5           3          35           2           1           3 
    ## 2009/06/06/ 2009/06/15/ 2009/07/01/ 2009/08/01/ 2009/09/01/ 2009/09/15/ 
    ##           1           4           5           4           2           1 
    ## 2009/10/01/ 2009/11/01/ 2009/12/01/ 2010/01/01/ 2010/02/01/ 2010/03/01/ 
    ##           3           3           2          39           1           3 
    ## 2010/03/15/ 2010/04/01/ 2010/05/01/ 2010/06/01/ 2010/06/15/ 2010/07/01/ 
    ##           1           3           2           2           2           3 
    ## 2010/08/01/ 2010/09/01/ 2010/09/15/ 2010/10/01/ 2010/11/01/ 2010/12/01/ 
    ##           1           7           2           1           5           1 
    ## 2010/12/15/ 2011/01/01/ 2011/02/01/ 2011/04/01/ 2011/05/01/ 2011/06/01/ 
    ##           1          50           1           2           2           3 
    ## 2011/06/15/ 2011/07/01/ 2011/08/01/ 2011/09/01/ 2011/10/01/ 2011/11/01/ 
    ##           1           4           1           1           3           3 
    ## 2011/12/01/ 2012/01/01/ 2012/03/01/ 2012/04/01/ 2012/05/01/ 2012/06/01/ 
    ##           3          71           4           5           1           2 
    ## 2012/06/15/ 2012/07/01/ 2012/08/01/ 2012/09/01/ 2012/09/15/ 2012/10/01/ 
    ##           3           2           4           7           2           4 
    ## 2012/11/01/ 2012/12/01/ 2013/01/01/ 2013/02/01/ 2013/03/01/ 2013/03/15/ 
    ##           4           1          57           3           4           1 
    ## 2013/04/01/ 2013/05/01/ 2013/06/01/ 2013/06/15/ 2013/07/01/ 2013/08/01/ 
    ##           2           2           3           1           1           3 
    ## 2013/09/01/ 2013/10/01/ 2013/12/01/ 2014/01/01/ 2014/02/01/ 2014/03/01/ 
    ##           4           4           1          37           2           4 
    ## 2014/05/01/ 2014/06/01/ 2014/08/01/ 2014/09/01/ 2014/10/01/ 2014/11/01/ 
    ##           1           2           2           7           4           4 
    ## 2014/12/15/ 2015/01/01/ 2015/03/01/ 2015/04/01/ 2015/05/01/ 2015/06/01/ 
    ##           1          54           4           3           2           5 
    ## 2015/06/15/ 2015/07/01/ 2015/08/01/ 2015/09/01/ 2015/10/01/ 2015/11/01/ 
    ##           1           1           4           3           3           3 
    ## 2015/12/01/ 2016/01/01/ 2016/02/01/ 2016/03/01/ 2016/04/01/ 2016/05/01/ 
    ##           3          76           2           5           1           2 
    ## 2016/06/01/ 2016/06/15/ 2016/07/01/ 2016/08/01/ 2016/09/01/ 2016/11/01/ 
    ##           3           1           2           3           4           2 
    ## 2016/12/01/ 2016/12/15/ 2017/01/01/ 2017/02/01/ 2017/03/01/ 2017/04/01/ 
    ##           4           1          78           2           6           4 
    ## 2017/06/01/ 2017/07/01/ 2017/08/01/ 2017/09/01/ 2017/09/15/ 2017/10/01/ 
    ##           3           1           4           4           2           4 
    ## 2017/11/01/ 2017/12/01/ 2017/12/15/ 2018/01/01/ 2018/03/01/ 2018/03/15/ 
    ##           3           4           1          86           3           2 
    ## 2018/04/01/ 2018/05/01/ 2018/07/01/ 2018/08/01/ 2018/09/01/ 2018/10/01/ 
    ##           4           3           1           4           2           2 
    ## 2018/11/01/ 2018/12/01/ 2019/01/01/ 2019/02/01/ 2019/03/01/ 2019/04/01/ 
    ##           3           4          72           2           2           3 
    ## 2019/05/01/ 2019/06/01/ 2019/07/01/ 2019/08/01/ 2019/09/01/ 2019/10/01/ 
    ##           3           2           3           6          10           3 
    ## 2019/11/01/ 2019/12/01/ 2020/01/01/ 2020/02/01/ 2020/03/01/ 2020/04/01/ 
    ##           3           2          93           1           4           5 
    ## 2020/05/01/ 2020/06/01/ 2020/06/15/ 2020/07/01/ 2020/08/01/ 2020/09/01/ 
    ##           5           1           1           6           4           4 
    ## 2020/10/01/ 2020/11/01/ 2020/12/01/ 2021/01/01/ 2021/02/01/ 2021/03/01/ 
    ##           1           2           7          95           3           4 
    ## 2021/04/01/ 2021/05/01/ 2021/06/01/ 2021/07/01/ 2021/08/01/ 2021/09/01/ 
    ##           4           3           6           5           2           6 
    ## 2021/10/01/ 2021/11/01/ 2021/12/01/ 2022/01/01/ 2022/02/01/ 2022/03/01/ 
    ##           6           2           6          64           1           6 
    ## 2022/03/15/ 2022/04/01/ 2022/05/01/ 2022/06/01/ 2022/07/01/ 2022/08/01/ 
    ##           1           2           3           4           1           4 
    ## 2022/09/01/ 2022/11/01/ 2022/12/01/ 2022/12/15/ 2023/01/01/ 2023/02/01/ 
    ##           3           4           6           1           3           2 
    ## 2023/04/01/ 
    ##           2 
    ## 
    ## $proquest
    ## 
    ## 1979 1980 1983 1985 1989 1990 1991 1994 1996 1997 1998 1999 2000 2001 2002 2003 
    ##    2    1    1    1    1    1    2    1    2    7   13    9    7   10    8   13 
    ## 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 
    ##   20   21   18   29   44   37   44   76   93   56   79   79   86  104  125  187 
    ## 2020 2021 2022 2023 2024 
    ##  165  228  198   86    1 
    ## 
    ## $informit
    ## 
    ## 1976 1978 1980 1981 1983 1984 1986 1988 1989 1992 1994 1996 1997 2001 2002 2003 
    ##    2    3    1    1    1    1    1    1    1    1    1    1    2    2    6    8 
    ## 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 
    ##    5    3    5   15   21   20   49   33   14   28   37   23   36   32   28   56 
    ## 2020 2021 2022 2023 
    ##   52   45   44    7 
    ## 
    ## $angel
    ## < table of extent 0 >

## 4.4 Corrections on files

The functions to modify ris file objects in R are in
[./modifyRis.R](./modifyRis.R)

``` r
source("./modifyRis.R")
```

### 4.4.1 Ebsco publications years

The “PY” field in the ebsco files is definitely not what it should:

``` r
A <- extractFields(ebsco, c("PY", "Y1"))
head(A, n = 10)
```

    ##    id          PY          Y1
    ## 1   1 2022/09/01/        <NA>
    ## 2   2 2020/01/01/        <NA>
    ## 3   3        <NA> 2023/03/24/
    ## 4   4 2022/12/01/        <NA>
    ## 5   5 2022/12/15/        <NA>
    ## 6   6 2023/04/01/        <NA>
    ## 7   7 2020/01/01/        <NA>
    ## 8   8 2022/01/01/        <NA>
    ## 9   9 2023/01/01/        <NA>
    ## 10 10        <NA>   2023/04//

``` r
any(!is.na(A$PY) & !is.na(A$Y1))
```

    ## [1] FALSE

So what we will do is:

1.  to move “PY” to the field “Y1”
2.  extract the years from the new field “Y1”
3.  add a field “PY” to put the years

``` r
ebsco <- changeFieldName(ebsco, "PY", "Y1", title = "T1")
valPY <- gsub("^([0-9]{4})/.*", "\\1", extractFields(ebsco, "Y1")$Y1)
ebsco <- addField(ebsco, fieldName = "PY", values = valPY)
```

``` r
head(extractFields(ebsco, "PY")$PY)
```

    ## [1] "2022" "2020" "2023" "2022" "2022" "2023"

## 4.5 Finding and deleting internal duplicates in Ris Files

``` r
intDupe_scopus <- risInternalDuplicate(scopus)
```

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2292,2343,2624
    ## have comparable titles and pulication years 
    ## (Design Principles for an intelligent-augmented-reality-based m-learning application to improve engineering students' English language skills
    ## Design principles for an intelligent-Augmented-Reality-based M-learning application to improve engineering students' English language skills
    ## Design principles for an intelligent-augmented- reality-based m-learning application to improve engineering students' english language skills)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3907,4066
    ## have comparable titles and pulication years 
    ## (Energy efficiency and Indoor climate of apartment and educational buildings in Estonia
    ## Energy efficiency and indoor climate of apartment and educational buildings in estonia)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2861,2902
    ## have comparable titles and pulication years 
    ## (Performance evaluation in teaching environments on climate change)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2913,3750
    ## have comparable titles (An introductory course on climate change) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3498,3992
    ## have comparable titles (Drought monitoring, prediction and adaptation under climatic changes) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2735,3241
    ## have comparable titles (Education, extension, and training for climate change) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2349,3446
    ## have comparable titles (Emergence of successful online courses: A student and faculty shift) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3363,3891
    ## have comparable titles (Environment and architectural stone) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3293,3676
    ## have comparable titles (Opportunities for enhancing ethical climates in online courses: Best practices for reducing student cheating) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2207,2770
    ## have comparable titles (The art of climate change: Art education for global citizenry) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3012,3088,3417
    ## have comparable titles (Theoretical foundations of a CSCL script in persistent virtual worlds according to the contemporary learning theories and models) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2337,4783
    ## have comparable titles (Challenges of providing interdisciplinary mental health education) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3729,4409
    ## have comparable titles (Presence in teaching) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

``` r
scopus <- filterRis(scopus, intDupe_scopus$toSupp)

intDupe_wosCore <- risInternalDuplicate(wosCore)
wosCore <- filterRis(wosCore, intDupe_wosCore$toSupp)

intDupe_wosScielo <- risInternalDuplicate(wosScielo)
wosScielo <- filterRis(wosScielo, intDupe_wosScielo$toSupp)

intDupe_ebsco <- risInternalDuplicate(ebsco)
```

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2070,3002,3004
    ## have comparable titles and pulication years 
    ## (An Analysis of a High Performing School District's Culture
    ## An analysis of a high performing school district's culture)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2240,2478
    ## have comparable titles and pulication years 
    ## (A policy analysis addressing 21st century learning)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1225,2363
    ## have comparable titles and pulication years 
    ## (Beyond Shared Book Reading: Dimensions of Home Literacy and Low-Income African American Preschoolers' Skills.
    ## Beyond shared book reading: Dimensions of home literacy and low-income African American preschooler's skills)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1143,2345
    ## have comparable titles and pulication years 
    ## (Comparison of Learning Strategies for Mathematics Achievement in Turkey with Eight Countries
    ## Comparison of learning strategies for mathematics achievement in Turkey with eight countries)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1384,1748
    ## have comparable titles and pulication years 
    ## (Enacting Inclusivity in an Exclusionary Climate: What Motivates Teachers to Work against Dominant Special Education and Accountability Discourses
    ## Enacting inclusivity in an exclusionary climate: What motivates teachers to work against dominant special education and accountability discourses)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2033,2604
    ## have comparable titles and pulication years 
    ## (Examining the effect of instructor experience on flight training time
    ## Examining the Effect of Instructor Experience on Flight Training Time)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 197,201
    ## have comparable titles and pulication years 
    ## (How Strong Principals Succeed: Improving Student Achievement in High-Poverty Urban Schools
    ## How Strong Principals Succeed: Improving Student Achievement in High-Poverty Urban Schools)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1036,2173
    ## have comparable titles and pulication years 
    ## (Multidimensional Perfectionism within Gifted Suburban Adolescents: An Exploration of Typology and Comparison of Samples
    ## Multidimensional perfectionism within gifted suburban adolescents: An exploration of typology and comparison of samples)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 290,576
    ## have comparable titles and pulication years 
    ## (Predicting Elementary Teachers' Efforts to Manage Social Dynamics from Classroom Composition, Teacher Characteristics, and the Early Year Peer Ecology
    ## Predicting Elementary Teachers' Efforts to Manage Social Dynamics from Classroom Composition, Teacher Characteristics, and the Early Year Peer Ecology)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 117,137
    ## have comparable titles and pulication years 
    ## (Quality of High School Programs for Students with Autism Spectrum Disorder
    ## Quality of High-School Programs for Students with Autism Spectrum Disorder)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3147,3895
    ## have comparable titles and pulication years 
    ## (Relationship of Change in Child Language to Nursery School Climate as Determined by Teacher Verbal Behavior
    ## Relationship of change in child language to nursery school climate as determined by teacher verbal behavior)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2222,2704
    ## have comparable titles and pulication years 
    ## (School Climate.)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 16,131
    ## have comparable titles and pulication years 
    ## (Teacher Perceptions of Implementation Climate Related to Feasibility of Implementing Schoolwide Positive Behavior Supports and Interventions)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 413,753
    ## have comparable titles and pulication years 
    ## (The Association of School Climate, Depression Literacy, and Mental Health Stigma among High School Students)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3421,3715
    ## have comparable titles and pulication years 
    ## (The Relationship Between Elementary School Climate and Teachers' Attitudes Toward Evaluation.
    ## The relationship between elementary school climate and teachers' attitudes toward evaluation)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1566,2248
    ## have comparable titles and pulication years 
    ## (The violence continuum: Creating a safe school climate
    ## The Violence Continuum: Creating a Safe School Climate)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1292,1343
    ## have comparable titles (A Comparison of Student and Teacher Perceptions Related to Teaching and Learning Conditions in High-Performing and Low-Performing Title I High Schools in Alabama
    ## A comparison of student and teacher perceptions related to teaching and learning conditions in high-performing and low-performing title i high schools in alabama) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2008,2297
    ## have comparable titles (A Criterion-Related Validity Study of the Grade Eight Assessment and the High School Proficiency Assessment in Mathematics for a B District Factor Group School in New Jersey
    ## A criterion-related validity study of the grade eight assessment and the high school proficiency assessment in mathematics for a b district factor group school in New Jersey) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1922,2054
    ## have comparable titles (An Analysis of Tardiness, Absenteeism, and Academic Achievement of 9th Grade Students in a Selected School District in Southeastern Georgia
    ## An analysis of tardiness, absenteeism, and academic achievement of 9th grade students in a selected school district in Southeastern Georgia) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 907,1177
    ## have comparable titles (An Analysis of the Relationship between 3rd Grade Teachers' Emotional Intelligence and Classroom Management Styles and Implications on Student Achievement in Title I Elementary Schools: A Correlational Study
    ## An analysis of the relationship between 3rd grade teachers' emotional intelligence and classroom management styles and implications on student achievement in Title I elementary schools: A correlational study) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2414,2589
    ## have comparable titles (Climate Change and Conceptual Change
    ## Climate change and conceptual change) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1729,1917
    ## have comparable titles (Examining the Impact of School Climate on Student Achievement: A Retrospective Study
    ## Examining the impact of school climate on student achievement: A retrospective study) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1823,1848
    ## have comparable titles (Leadership for safe and inclusive schools: An examination of lesbian, gay, bisexual and transgender educators' perceptions of school climate
    ## Leadership for Safe and Inclusive Schools: An Examination of Lesbian, Gay, Bisexual and Transgender Educators' Perceptions of School Climate) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 437,841
    ## have comparable titles (Personal, Professional, Political: An Exploration of Science Teacher Identity Development for Teaching Climate Change) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1504,1661
    ## have comparable titles (Reducing School Factors That Lead to Student Dropout at Sussex Central High School
    ## Reducing school factors that lead to student dropout at Sussex central high school) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2022,2321
    ## have comparable titles (Relationship between the Quality of Educational Facilities, School Climate, and School Safety of High School Tenth Graders in the United States
    ## Relationship between the quality of educational facilities, school climate, and school safety of high school tenth graders in the United States) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 894,1137
    ## have comparable titles (School Readiness Factors for Predicting High and Low Achieving Students in First Grade
    ## School readiness factors for predicting high and low achieving students in first grade) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1882,1936
    ## have comparable titles (Teachers' Perception of School Climate in Independent Jewish Day Schools in Relation to Change and Transition of Leadership Personnel
    ## Teachers' perception of school climate in independent jewish day schools in relation to change and transition of leadership personnel) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1953,2342
    ## have comparable titles and pulication years 
    ## (Classroom and School Factors Related to Student Achievement: What Works for Students?
    ## Classroom and school factors related to student achievement: What works for students?)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2634,3638
    ## have comparable titles and pulication years 
    ## (Closing the Gap: An Analysis of Teacher and Administrator Perceptions of Organizational Climate in the Early Childhood Setting.
    ## Closing the gap: An analysis of teacher and administrator perceptions of organizational climate in the early childhood setting)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 7,250
    ## have comparable titles and pulication years 
    ## (Developmental Relationships and School Success: How Teachers, Parents, and Friends Affect Educational Outcomes and What Actions Students Say Matter Most
    ## Developmental relationships and school success: How teachers, parents, and friends affect educational outcomes and what actions students say matter most)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 933,2764
    ## have comparable titles and pulication years 
    ## (Dispositional Flow in Physical Education: Relationships with Motivational Climate, Social Goals, and Perceived Competence
    ## Dispositional flow in physical education: Relationships with motivational climate, social goals, and perceived competence)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3674,4068
    ## have comparable titles and pulication years 
    ## (Effects of classroom social climate on individual learning)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2981,4015
    ## have comparable titles and pulication years 
    ## (Underachievement Is Many Sided
    ## Underachievement is many-sided)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 2601,3483
    ## have comparable titles (Professional Burnout among Public School Teachers.
    ## Professional burnout among public school teachers) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 46,429
    ## have comparable titles (The Multidimensional School Climate Questionnaire (MSCQ) Parent-Version: Factorial Structure and Measurement Invariance
    ## The multidimensional school climate questionnaire (mscq) parent-version: Factorial structure and measurement invariance) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 3225,3997
    ## have comparable titles (They Saw a Game: A Case Study
    ## They saw a game; a case study) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

``` r
ebsco <- filterRis(ebsco, intDupe_ebsco$toSupp)

intDupe_proquest <- risInternalDuplicate(proquest)
```

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1130,1131
    ## have the same DOI (https://doi.org/10.1029/2010WR009167) but differences in their titles:
    ## Assessment of climate change impacts at the catchment scale with a detailed hydrological model of surface-subsurface interactions and comparison with a land surface model
    ## Assessment of climate change impacts at the catchment scale with a detailed hydrological model of surface-subsurface interactions and comparison with a land surface model: [1]
    ## 
    ## they will NOT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1201,1791,1798
    ## have comparable titles and pulication years 
    ## (Credits)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 371,377
    ## have comparable titles and pulication years 
    ## (THE TROPICS)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1,22,1447
    ## have comparable titles (Editorial
    ## EDITORIAL) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 38,1289,1309
    ## have comparable titles (Internet resources
    ## INTERNET RESOURCES) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1402,1417
    ## have comparable titles (Samoa) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 34,61,313,574,1064,1075,1078,1089,1161,1192,1358,1449,1484,1789,1800
    ## have comparable titles (Table of Contents) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1148,1180
    ## have comparable titles (U.S. Relations With Kiribati) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 1,22,286,328,1447
    ## have comparable titles (Editorial
    ## EDITORIAL) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 34,61,313,419,574,1064,1075,1078,1089,1161,1192,1358,1449,1484,1789,1800
    ## have comparable titles (Table of Contents) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

``` r
proquest <- filterRis(proquest, intDupe_proquest$toSupp)

intDupe_informit <- risInternalDuplicate(informit)
```

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 238,239,242,243
    ## have comparable titles and pulication years 
    ## (Climate change and small island states: Power, knowledge and the South Pacific [Book Review]
    ## Climate change and small Island states, power, knowledge and the South Pacific [Book Review])
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 122,377
    ## have comparable titles and pulication years 
    ## (Reviews of internet sites)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 503,504,571,572
    ## have comparable titles and pulication years 
    ## (Shorts)
    ##  but have differences in their authors and/or types:
    ## 
    ## Note that they will be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 535,536,556,557
    ## have comparable titles (Editorial) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 277,278,339
    ## have comparable titles (I am a geographer...
    ## I am a geographer ...) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 297,298,388,389,394
    ## have comparable titles (Information, poetry and drama) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

    ## Warning in FUN(X[[i]], ...): 
    ## Records: 454,470,471
    ## have comparable titles (Noteworthy People at Work in the Youth Field
    ## Noteworthy people at work in the youth field) but have a difference of more than one publication year!
    ## 
    ## Note that they WONT be considered as duplicates

``` r
informit <- filterRis(informit, intDupe_informit$toSupp)

intDupe_embase <- risInternalDuplicate(embase)
embase <- filterRis(embase, intDupe_embase$toSupp)

angel  # only one record... no 
```

    ## $nbRecords
    ## [1] 1
    ## 
    ## $registers
    ##   id begin end
    ## 1  1     1   9
    ## 
    ## $fieldName
    ## [1] "TY" "AB" "AU" "AU" "AU" "SN" "TI" "UR" "ER"
    ## 
    ## $lineRegId
    ## [1] 1 1 1 1 1 1 1 1 1
    ## 
    ## $raw
    ## [1] "TY  - BOOK"                                                                                                                                                     
    ## [2] "AB  - A policy briefing that addresses the question of how Global Education can contribute to the discourses and practices around education for climate change."
    ## [3] "AU  - Global Education Network Europe"                                                                                                                          
    ## [4] "AU  - Bourn, Douglas"                                                                                                                                           
    ## [5] "AU  - Hjelleset, Knut"                                                                                                                                          
    ## [6] "SN  - 9781911607229"                                                                                                                                            
    ## [7] "TI  - Global Education and Climate Change : Looking at Climate Change Education through the lens of Global Education"                                           
    ## [8] "UR  - https://angel-network.net/sites/default/files/Briefing_Global%2BEducation%2Band%2BClimate%2BChange.pdf"                                                   
    ## [9] "ER  -"                                                                                                                                                          
    ## 
    ## $content
    ## [1] "BOOK"                                                                                                                                                     
    ## [2] "A policy briefing that addresses the question of how Global Education can contribute to the discourses and practices around education for climate change."
    ## [3] "Global Education Network Europe"                                                                                                                          
    ## [4] "Bourn, Douglas"                                                                                                                                           
    ## [5] "Hjelleset, Knut"                                                                                                                                          
    ## [6] "9781911607229"                                                                                                                                            
    ## [7] "Global Education and Climate Change : Looking at Climate Change Education through the lens of Global Education"                                           
    ## [8] "https://angel-network.net/sites/default/files/Briefing_Global%2BEducation%2Band%2BClimate%2BChange.pdf"                                                   
    ## [9] "ER  -"

``` r
# for(i in 2:length(dataList)) { for(j in 1:(i-1)) {
# cat(paste0('dupe_',dataList[i],'_',dataList[j],' <-
# #compareRisDuplicate(',dataList[i],', ',dataList[j],')\n',
# dataList[i],' <- filterRis(',dataList[i],',
# dupe_',dataList[i],'_',dataList[j],'$toSupp)\n')) } }

dupe_wosCore_scopus <- compareRisDuplicate(wosCore, scopus)
```

    ## 2646 / 3119 records are already in the reference file

``` r
wosCore <- filterRis(wosCore, dupe_wosCore_scopus$toSupp)
dupe_wosScielo_scopus <- compareRisDuplicate(wosScielo, scopus)
```

    ## 26 / 171 records are already in the reference file

``` r
wosScielo <- filterRis(wosScielo, dupe_wosScielo_scopus$toSupp)
dupe_wosScielo_wosCore <- compareRisDuplicate(wosScielo, wosCore)
```

    ## 5 / 145 records are already in the reference file

``` r
wosScielo <- filterRis(wosScielo, dupe_wosScielo_wosCore$toSupp)
dupe_embase_scopus <- compareRisDuplicate(embase, scopus)
```

    ## 6 / 25 records are already in the reference file

``` r
embase <- filterRis(embase, dupe_embase_scopus$toSupp)
dupe_embase_wosCore <- compareRisDuplicate(embase, wosCore)
```

    ## 0 / 19 records are already in the reference file

``` r
embase <- filterRis(embase, dupe_embase_wosCore$toSupp)
dupe_embase_wosScielo <- compareRisDuplicate(embase, wosScielo)
```

    ## 0 / 19 records are already in the reference file

``` r
embase <- filterRis(embase, dupe_embase_wosScielo$toSupp)
dupe_ebsco_scopus <- compareRisDuplicate(ebsco, scopus)
```

    ## 947 / 3957 records are already in the reference file

``` r
ebsco <- filterRis(ebsco, dupe_ebsco_scopus$toSupp)
dupe_ebsco_wosCore <- compareRisDuplicate(ebsco, wosCore)
```

    ## 34 / 3010 records are already in the reference file

``` r
ebsco <- filterRis(ebsco, dupe_ebsco_wosCore$toSupp)
dupe_ebsco_wosScielo <- compareRisDuplicate(ebsco, wosScielo)
```

    ## 0 / 2976 records are already in the reference file

``` r
ebsco <- filterRis(ebsco, dupe_ebsco_wosScielo$toSupp)
dupe_ebsco_embase <- compareRisDuplicate(ebsco, embase)
```

    ## 0 / 2976 records are already in the reference file

``` r
ebsco <- filterRis(ebsco, dupe_ebsco_embase$toSupp)
dupe_proquest_scopus <- compareRisDuplicate(proquest, scopus)
```

    ## 26 / 1826 records are already in the reference file

``` r
proquest <- filterRis(proquest, dupe_proquest_scopus$toSupp)
dupe_proquest_wosCore <- compareRisDuplicate(proquest, wosCore)
```

    ## 1 / 1800 records are already in the reference file

``` r
proquest <- filterRis(proquest, dupe_proquest_wosCore$toSupp)
dupe_proquest_wosScielo <- compareRisDuplicate(proquest, wosScielo)
```

    ## 0 / 1799 records are already in the reference file

``` r
proquest <- filterRis(proquest, dupe_proquest_wosScielo$toSupp)
dupe_proquest_embase <- compareRisDuplicate(proquest, embase)
```

    ## 0 / 1799 records are already in the reference file

``` r
proquest <- filterRis(proquest, dupe_proquest_embase$toSupp)
dupe_proquest_ebsco <- compareRisDuplicate(proquest, ebsco)
```

    ## 4 / 1799 records are already in the reference file

``` r
proquest <- filterRis(proquest, dupe_proquest_ebsco$toSupp)
dupe_informit_scopus <- compareRisDuplicate(informit, scopus)
```

    ## 4 / 432 records are already in the reference file

``` r
informit <- filterRis(informit, dupe_informit_scopus$toSupp)
dupe_informit_wosCore <- compareRisDuplicate(informit, wosCore)
```

    ## 0 / 428 records are already in the reference file

``` r
informit <- filterRis(informit, dupe_informit_wosCore$toSupp)
dupe_informit_wosScielo <- compareRisDuplicate(informit, wosScielo)
```

    ## 0 / 428 records are already in the reference file

``` r
informit <- filterRis(informit, dupe_informit_wosScielo$toSupp)
dupe_informit_embase <- compareRisDuplicate(informit, embase)
```

    ## 0 / 428 records are already in the reference file

``` r
informit <- filterRis(informit, dupe_informit_embase$toSupp)
dupe_informit_ebsco <- compareRisDuplicate(informit, ebsco)
```

    ## 3 / 428 records are already in the reference file

``` r
informit <- filterRis(informit, dupe_informit_ebsco$toSupp)
# dupe_informit_proquest <- compareRisDuplicate(informit, proquest)
# informit <- filterRis(informit, dupe_informit_proquest$toSupp)
dupe_angel_scopus <- compareRisDuplicate(angel, scopus)
```

    ## 0 / 1 records are already in the reference file

``` r
angel <- filterRis(angel, dupe_angel_scopus$toSupp)
dupe_angel_wosCore <- compareRisDuplicate(angel, wosCore)
```

    ## 0 / 1 records are already in the reference file

``` r
angel <- filterRis(angel, dupe_angel_wosCore$toSupp)
dupe_angel_wosScielo <- compareRisDuplicate(angel, wosScielo)
```

    ## 0 / 1 records are already in the reference file

``` r
angel <- filterRis(angel, dupe_angel_wosScielo$toSupp)
dupe_angel_embase <- compareRisDuplicate(angel, embase)
```

    ## 0 / 1 records are already in the reference file

``` r
angel <- filterRis(angel, dupe_angel_embase$toSupp)
dupe_angel_ebsco <- compareRisDuplicate(angel, ebsco)
```

    ## 0 / 1 records are already in the reference file

``` r
angel <- filterRis(angel, dupe_angel_ebsco$toSupp)
dupe_angel_proquest <- compareRisDuplicate(angel, proquest)
```

    ## 0 / 1 records are already in the reference file

``` r
angel <- filterRis(angel, dupe_angel_proquest$toSupp)
dupe_angel_informit <- compareRisDuplicate(angel, informit)
```

    ## 0 / 1 records are already in the reference file

``` r
angel <- filterRis(angel, dupe_angel_informit$toSupp)
```

# 5 Writing final Ris files

``` r
DIR <- "../../Search/finalRis"
if(dir.exists(DIR))
{
  unlink(DIR,recursive=T)
}
dir.create(DIR)
writeRis(finalRis$scopus,filename=paste(DIR,"scopus.ris",sep="/"))
writeRis(finalRis$WoS_core,filename=paste(DIR,"WoS_Core.ris",sep="/"))
writeRis(finalRis$WosScielo,filename=paste(DIR,"WoS_SciELO.ris",sep="/"))
```
