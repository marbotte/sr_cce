Searching psychological words in the extraction table
================
Marius Bottin
2024-01-24

- [1 Objective](#1-objective)
- [2 Reading the extraction table](#2-reading-the-extraction-table)
- [3 Searching the world](#3-searching-the-world)
  - [3.1 In methods/results](#31-in-methodsresults)
- [4 Do not consider!](#4-do-not-consider)

# 1 Objective

We will search words in the extraction table, to get an idea of the use
of psychological notions in papers, including when the papers are not
published in psychology journals.

The words we will search are:

- **psychology**: we will use the expression `psycho` to search for
  psychological notions
- **Theory of planned behavior**: we will use the expressions
  `self.efficacy` (accepting hyphen or space), `planned behavior` for
  getting the references to the theory
- **emotional notions**: we will use the expressions `hope`, `fear`,
  `anxi`, `distress` to get the reference to emotional reactions

# 2 Reading the extraction table

``` r
require(openxlsx)&require(knitr)&require(kableExtra)
```

    ## Loading required package: openxlsx

    ## Loading required package: knitr

    ## Loading required package: kableExtra

    ## [1] TRUE

``` r
completeFTS <- read.xlsx("../../screening/fullTextScreening/fullTextScreening.xlsx")
names(loadWorkbook("../../extraction/20240116_journals.xlsx"))
```

    ##  [1] "Guidance for search strategy" "Search strategy"             
    ##  [3] "Feuille 3"                    "Inclusion-exclusion criteria"
    ##  [5] "searches"                     "extraction "                 
    ##  [7] "Tableau croisé dynamique 4"   "Tableau croisé dynamique 3"  
    ##  [9] "Tableau croisé dynamique 1"   "ColorCode"

``` r
rawExtract<-read.xlsx("../../extraction/20240116_journals.xlsx",sheet = "extraction ",startRow = 2)
extract<-rawExtract
#table(extract$`Validation.Mitigation/adaptation`)
tabToWork<-extract[order(extract$id),]
```

# 3 Searching the world

## 3.1 In methods/results

All the searches will be based on this (example of self efficacy on the
column “Analysis.technique”:

``` r
(res <- regexpr("self.efficacy",tabToWork$Analysis.technique,ignore.case=T))
```

    ##   [1]  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1
    ##  [19]  -1  NA  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1
    ##  [37]  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1
    ##  [55]  -1  71  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1
    ##  [73]  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1
    ##  [91]  -1  -1  -1  -1 102  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1
    ## [109]  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1
    ## [127]  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1
    ## [145]  -1  -1  -1  -1  -1  -1  -1  -1
    ## attr(,"match.length")
    ##   [1] -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 NA -1 -1 -1 -1 -1
    ##  [26] -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
    ##  [51] -1 -1 -1 -1 -1 13 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
    ##  [76] -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 13 -1 -1 -1 -1 -1
    ## [101] -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
    ## [126] -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
    ## [151] -1 -1

``` r
tabToWork$id[which(!is.na(res)&res!=-1)]
```

    ## [1] "Kolenaty2022" "Petersen2020"

The concerned columns of the table are:

- Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
- Analysis.technique
- Resultados.obtenidos.por.cada.outcome
- Which.aspect.has.improved.or.not?

``` r
colMR <- c("Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto","Analysis.technique","Resultados.obtenidos.por.cada.outcome","Which.aspect.has.improved.or.not?")
```

The regular expression we will use to find the words are:

``` r
exprs <- c("psycho","self.efficacy","planned behaviou?r","hope","fear","distress","anxi","distress")
```

To apply the search on each column with each word, we do:

``` r
completeSearch<-lapply(exprs,function(w,t,ids){
  lapply(t,function(column,W,IDS){
    res<-regexpr(W,column,ignore.case=T)
    return(IDS[which(!is.na(res)&res!=-1)])
  },W=w,IDS=ids)
},t=tabToWork[,colMR],ids=tabToWork$id)
names(completeSearch)<-exprs
completeSearch
```

    ## $psycho
    ## $psycho$Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
    ## [1] "Sellmann2013a"
    ## 
    ## $psycho$Analysis.technique
    ## character(0)
    ## 
    ## $psycho$Resultados.obtenidos.por.cada.outcome
    ## character(0)
    ## 
    ## $psycho$`Which.aspect.has.improved.or.not?`
    ## character(0)
    ## 
    ## 
    ## $self.efficacy
    ## $self.efficacy$Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
    ## character(0)
    ## 
    ## $self.efficacy$Analysis.technique
    ## [1] "Kolenaty2022" "Petersen2020"
    ## 
    ## $self.efficacy$Resultados.obtenidos.por.cada.outcome
    ## [1] "Deisenrieder2020" "DeWaters2014"     "Flora2014"        "Kolenaty2022"    
    ## [5] "Petersen2020"    
    ## 
    ## $self.efficacy$`Which.aspect.has.improved.or.not?`
    ## character(0)
    ## 
    ## 
    ## $`planned behaviou?r`
    ## $`planned behaviou?r`$Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
    ## [1] "Hu2016"
    ## 
    ## $`planned behaviou?r`$Analysis.technique
    ## [1] "Hu2016"
    ## 
    ## $`planned behaviou?r`$Resultados.obtenidos.por.cada.outcome
    ## character(0)
    ## 
    ## $`planned behaviou?r`$`Which.aspect.has.improved.or.not?`
    ## character(0)
    ## 
    ## 
    ## $hope
    ## $hope$Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
    ## [1] "Stevenson2018a"
    ## 
    ## $hope$Analysis.technique
    ## [1] "Stevenson2018a"
    ## 
    ## $hope$Resultados.obtenidos.por.cada.outcome
    ## [1] "Gladwin2022"    "Herrick2022"    "Jones2021"      "Khadka2021"    
    ## [5] "Stevenson2018"  "Stevenson2018a" "Wang2022"      
    ## 
    ## $hope$`Which.aspect.has.improved.or.not?`
    ## [1] "Herrick2022"    "Jones2021"      "Stevenson2018"  "Stevenson2018a"
    ## 
    ## 
    ## $fear
    ## $fear$Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
    ## character(0)
    ## 
    ## $fear$Analysis.technique
    ## character(0)
    ## 
    ## $fear$Resultados.obtenidos.por.cada.outcome
    ## [1] "Gladwin2022" "Wang2022"   
    ## 
    ## $fear$`Which.aspect.has.improved.or.not?`
    ## [1] "Wang2022"
    ## 
    ## 
    ## $distress
    ## $distress$Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
    ## character(0)
    ## 
    ## $distress$Analysis.technique
    ## character(0)
    ## 
    ## $distress$Resultados.obtenidos.por.cada.outcome
    ## character(0)
    ## 
    ## $distress$`Which.aspect.has.improved.or.not?`
    ## character(0)
    ## 
    ## 
    ## $anxi
    ## $anxi$Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
    ## character(0)
    ## 
    ## $anxi$Analysis.technique
    ## character(0)
    ## 
    ## $anxi$Resultados.obtenidos.por.cada.outcome
    ## [1] "Kumar2023"
    ## 
    ## $anxi$`Which.aspect.has.improved.or.not?`
    ## character(0)
    ## 
    ## 
    ## $distress
    ## $distress$Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto
    ## character(0)
    ## 
    ## $distress$Analysis.technique
    ## character(0)
    ## 
    ## $distress$Resultados.obtenidos.por.cada.outcome
    ## character(0)
    ## 
    ## $distress$`Which.aspect.has.improved.or.not?`
    ## character(0)

# 4 Do not consider!

``` r
#, results='asis'}
for(i in 1:nrow(tabToWork))
{
  ref<-tabToWork$id[i]
  title<-tabToWork$referencia[i]
  person<-tabToWork$codifico[i]
  abstract<-completeFTS[completeFTS$abbrev==ref,"abstract"]
  knowledge<-tabToWork$knowledge[i]
  awareness<-tabToWork$awareness[i]
  intention<-tabToWork$intention[i]
  emotions<-tabToWork$emotion[i]
  action<-tabToWork$action[i]
  habit<-tabToWork$habit[i]
  other<-tabToWork$Other[i]
  conclusions<-tabToWork$Conclusiones.generales[i]
  notes<-tabToWork$Main.ideas.to.keep.for.the.synthesis[i]
  # cat("#", ref,"\n\n",
  #     "*title*:", title,"\n\n",
  #     "*person*:", person,"\n\n",
  #     "*abstract*:", abstract,"\n\n",
  #     ifelse(is.na(knowledge),"",paste("*knowledge*:", knowledge,"\n\n")),
  #     ifelse(is.na(awareness),"",paste("*awareness*:", awareness,"\n\n")),
  #     ifelse(is.na(intention),"",paste("*intention*:", intention,"\n\n")),
  #     ifelse(is.na(emotions),"",paste("*emotions*:", emotions,"\n\n")),
  #     ifelse(is.na(action),"",paste("*action*:", action,"\n\n")),
  #     ifelse(is.na(habit),"",paste("*habit*:", habit,"\n\n")),
  #     ifelse(is.na(other),"",paste("*other*:", other,"\n\n"))
  # )
  cat("#", ref, "(",person,")\n\n")
  
  cat("**title**",tabToWork$referencia[i],"\n\n")
  
  cat("##","abstract","\n\n")
  cat(abstract,"\n\n")
  cat("## Population\n\n")
  TAB<-na.omit(t(tabToWork[i,c("Countries.STUDY","TARGETED.SAMPLE","SAMPLE","sample.size","age_min","age_max","mean.age","urban.vs.rural")]))
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  cat(kable(TAB,col.names = c()))
  cat("\n\n")
  cat(paste("##","Objective/questions\n\n"))
  TAB<-t(tabToWork[i,c("Objectives","Questions")])
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  #TAB[,1]<-gsub("\\[","\\\\[",TAB[,1])
  #TAB[,1]<-gsub("([0-9])\\.","\\1",TAB[,1])
  cat("**Objective**:\n\n",TAB["Objectives",],"\n\n")
  cat("**Questions**:\n\n",TAB["Questions",],"\n\n")
  cat("\n\n")
  cat("## Intervention\n\n")
  TAB<-t(tabToWork[i,c("Curricular/Extracurricular","Outdoor/Indoor/Both","Type.of.intervention","Descripcion.de.intervención")])
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  #cat(kable(TAB,col.names = c()))
  cat("**Curricular/Extra**:",TAB[1,],"\n\n")
  cat("**Indoor/Outdoor**:",TAB[2,],"\n\n")
  cat("**Type**:",TAB[3,],"\n\n")
  cat("**Description**:",TAB[4,],"\n\n")
  
  
  cat("\n\n")
  cat("## Methods/Results\n\n")
  TAB<-t(tabToWork[i,c("Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto","Analysis.technique","Resultados.obtenidos.por.cada.outcome","Which.aspect.has.improved.or.not?")])
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  TAB[,1]<-gsub("^- ","",TAB[,1])
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  #cat(kable(TAB,col.names = c()))
  cat("**Data**:",TAB[1,],"\n\n")
  cat("**Analysis**:",TAB[2,],"\n\n")
  cat("**Results**:",TAB[3,],"\n\n")
  cat("**Improved?**:",TAB[4,],"\n\n")
  cat("\n\n")
  
  cat("## Outcomes\n\n")
  
  cat(ifelse(is.na(knowledge),"\n",paste("**knowledge**:",knowledge,"(*Worked?*:",tabToWork$`knowledge.did.it.work?`[i], ")\n\n")))
  cat(ifelse(is.na(awareness),"\n",paste("**awareness**:", awareness,"(*Worked?*:",tabToWork$`awareness.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(intention),"\n",paste("**intention**:", intention,"(*Worked?*:",tabToWork$`intention.,.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(emotions),"\n",paste("**emotions**:", emotions,"(*Worked?*:",tabToWork$`emotion,.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(action),"\n",paste("**action**:", action,"(*Worked?*:",tabToWork$`action,.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(habit),"\n",paste("**habit**:", habit,"(*Worked?*:",tabToWork$`habit,.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(other),"\n",paste("**other**:", other,"(*Worked?*:",tabToWork$`Other,.did.it.work`[i],")\n\n")))
  
  cat("## Conclusions\n\n")
  
  TAB<-t(tabToWork[i,c("Conclusiones.generales","Main.ideas.to.keep.for.the.synthesis")])
  #cat(kable(TAB,col.names = c()))
  cat("**Conclusions**:",TAB[1,],"\n\n")
  cat("**Message to keep:**:",TAB[2,],"\n\n")
  cat("\n\n")
}
```
