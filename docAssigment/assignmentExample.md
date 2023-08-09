Example of use of the assignment functions with the documents of the
full text screening
================
Marius Bottin
2023-08-09

- [1 Reading source functions](#1-reading-source-functions)
- [2 Creating the project](#2-creating-the-project)
- [3 Making assignment by hand](#3-making-assignment-by-hand)
- [4 Making automatic assignments](#4-making-automatic-assignments)
- [5 Current state](#5-current-state)

# 1 Reading source functions

``` r
source("./docAssignment_functions.R")
```

    ## Loading required package: reticulate

# 2 Creating the project

All the information we need to create the project is in the excel file
with the document, that we will use as well to make the document
reviews.

``` r
require(openxlsx)
```

    ## Loading required package: openxlsx

``` r
completeFTS <- read.xlsx("../../screening/fullTextScreening/fullTextScreening.xlsx")
listDocument <- data.frame(documents=completeFTS$abbrev,categ="default")
listDocument$categ[completeFTS$group%in%c("Thesis","thesis","Book")] <- "thesesOrBook"
listDocument$categ[!is.na(completeFTS$group)]
```

    ## [1] "thesesOrBook" "thesesOrBook" "thesesOrBook" "thesesOrBook" "thesesOrBook"

``` r
listDocument$categ[!completeFTS$pdfDownloaded]<-"missingPdf"
listDocument$categ[completeFTS$unclear]<-"unclear"
(documents<-tapply(listDocument$documents,listDocument$categ,function(x)x))
```

    ## $default
    ##   [1] "Zografakis2008"        "Klosterman2010"        "Mason1998"            
    ##   [4] "Svihla2012"            "Sellmann2013a"         "Reinfried2012"        
    ##   [7] "Otieno2014"            "Karpudewan2015a"       "Faria2015"            
    ##  [10] "Baker2013"             "Vicente2020"           "Akaygun2021"          
    ##  [13] "Li2022"                "Kabir2015"             "Aksel_Stenberdt2023"  
    ##  [16] "Oberauer2023"          "Kumar2023"             "Sutela2023"           
    ##  [19] "Catanzaro2023"         "Crouze2023"            "Meixner2023"          
    ##  [22] "Littrell2022"          "Wang2022"              "Kolenaty2022"         
    ##  [25] "Aydogan2022"           "Schubatzky2022"        "Skains2022"           
    ##  [28] "Kubisch2022"           "Steffensen2022"        "Sukardi2022"          
    ##  [31] "Turner2022"            "Nafisah2022"           "White2022"            
    ##  [34] "Herrick2022"           "Gladwin2022"           "Hugel2022"            
    ##  [37] "Ferguson2022"          "da_Silva2022"          "McGowan2022"          
    ##  [40] "Gutierrez2022"         "van_Zee2022"           "Cebesoy2022"          
    ##  [43] "Trott2022"             "Leitao2022"            "Muller2021"           
    ##  [46] "Hepper2021"            "Choi2021"              "Sandoval_Rivera2021"  
    ##  [49] "Zhong2021"             "Jones2021"             "Ross2021"             
    ##  [52] "Levrini2021"           "Bhattacharya2021"      "Leckey2021"           
    ##  [55] "Salas_Rueda2021"       "Pimentel2021"          "Bopardikar2021"       
    ##  [58] "Tallapragada2021"      "Pfirman2021"           "Schrot2021a"          
    ##  [61] "Tasti2021"             "Wu2021"                "Sezen_Barrie2021"     
    ##  [64] "Khadka2021"            "Bentz2020"             "Petersen2020"         
    ##  [67] "Parth2020"             "da_Rocha2020"          "Hosman2020"           
    ##  [70] "Park2020"              "Trott2020"             "Sezen_Barrie2020"     
    ##  [73] "Deisenrieder2020"      "Nkoana2020"            "Trott2020a"           
    ##  [76] "Goeschl2020"           "Dormody2020"           "Kretser2020"          
    ##  [79] "Rooney2021"            "Prosser_Bravo2020"     "Levrini2019"          
    ##  [82] "Salsabila2019"         "Harker_Schuch2020"     "Nakamura2019"         
    ##  [85] "Cebesoy2019"           "de_Sousa2019"          "Bush2019a"            
    ##  [88] "Trott2019"             "Landon2019"            "Liu2019"              
    ##  [91] "Monroe2019"            "Walsh2019"             "Pekel2019"            
    ##  [94] "Varela_Losada2019"     "Siegner2018"           "Smith2019"            
    ##  [97] "Sandhaus2018"          "Stevenson2018"         "Keller2019"           
    ## [100] "Breslyn2019"           "Plutzer2018"           "Puttick2018"          
    ## [103] "Meya2018"              "Walsh2018"             "Tomlinson2018"        
    ## [106] "Chang2018"             "Drewes2018"            "Stevenson2018a"       
    ## [109] "Ozen2018"              "Jacobson2017"          "Burkholder2017"       
    ## [112] "Gkotzos2017"           "Tasquier2017"          "Karpudewan2017"       
    ## [115] "Nicholas_Figueroa2017" "Eggert2017"            "Korfgen2017"          
    ## [118] "Blaum2017"             "Goulah2017"            "Carey2017"            
    ## [121] "Hestness2017"          "Chankrajang2017"       "Hu2016"               
    ## [124] "Manalo2016"            "Swim2017"              "Arya2016"             
    ## [127] "Monroe2016"            "Shea2016"              "Chin2016"             
    ## [130] "Saribaş2016"           "Boon2016"              "Aksut2016"            
    ## [133] "Todd2016"              "Yoon2016"              "Yoon2016a"            
    ## [136] "Raes2016"              "Chong2015"             "Logan2015"            
    ## [139] "Korsager2015"          "Tasquier2015"          "Karpudewan2015"       
    ## [142] "Visintainer2015"       "Sellmann2015"          "Bofferding2015"       
    ## [145] "Miller2015"            "Nussbaum2015"          "Flora2014"            
    ## [148] "Gold2015"              "Holthuis2014"          "Bodzin2014"           
    ## [151] "DeWaters2014"          "Jeong2014"             "Sundberg2013"         
    ## [154] "Ratinen2013"           "Harker_Schuch2013"     "Lambert2013"          
    ## [157] "Lombardi2013"          "Allen2014"             "Day2013"              
    ## [160] "Roscoe2013"            "Jin2013"               "Veijalainen2013"      
    ## [163] "Sellmann2013"          "Kinsey2012"            "Makrakis2012"         
    ## [166] "Chordnork2012"         "Ruboon2012"            "Makrakis2012a"        
    ## [169] "Feldpausch_Parker2013" "Picketts2012"          "Feierabend2012"       
    ## [172] "Varma2012"             "McNeill2012"           "Lambert2012"          
    ## [175] "Lombardi2012"          "Porter2012"            "Koseoglu2011"         
    ## [178] "Sternang2012"          "Bozdogan2011"          "Robelia2011"          
    ## [181] "Taber2009"             "Cordero2008"           "Schuster2008"         
    ## [184] "Pruneau2006"           "Lester2006"            "Rebich2005"           
    ## [187] "Pruneau2003"           "Trott2020b"            "Cibik2022"            
    ## [190] "Muller2021a"           "Kathiresan2021"        "Leckey2021a"          
    ## [193] "Sumrall2021"           "Lozano2022"            "Eichinger2022"        
    ## [196] "Oe2022"                "Williams2017"          "Anonymous2021"        
    ## [199] "Parant2017"            "Kreibich2011"          "Gomes2015"            
    ## [202] "da_Silva2022a"         "Prosser_Bravo2022"     "Silva2021"            
    ## [205] "Oliveira2021"          "Bello_Benavides2019"   "Bright2020"           
    ## [208] "Dormody2021"           "Aldila2018"            "Roychoudhury2017"     
    ## [211] "Kern2017"              "Liu2015"               "Musselman2020"        
    ## [214] "Xie2014"               "Bhattacharya2020"      "Taylor2020"           
    ## [217] "Le2019"                "Gutierrez2016"         "Chattuchai2015"       
    ## [220] "Dal2015a"              "Wallace2018"           "McNeal2014"           
    ## [223] "Walsh2012"             "Kumar2018"             "Ouariachi2017a"       
    ## [226] "Cohen2013"             "Swim2013"              "Nauck2020"            
    ## [229] "Kullar2011"           
    ## 
    ## $missingPdf
    ## [1] "Caputo2018"        "Alexandar2017"     "Wannawichitra2011"
    ## [4] "Supelano2022"      "Salsabila2019a"    "Goralnik2019"     
    ## [7] "Da_Costa2020"      "McKinzey2010"      "Vesperman2014"    
    ## 
    ## $thesesOrBook
    ## [1] "Tabor2016"           "Trendell_Nation2017" "Lombardi2012a"      
    ## [4] "Choi2012"           
    ## 
    ## $unclear
    ##  [1] "Öhman2013"        "Gold2015a"        "McNeal2014a"      "Stevenson2016a"  
    ##  [5] "Lawson2019a"      "Maddox2011"       "Clark2020"        "Ng2019"          
    ##  [9] "Markowitz2018"    "Rooney_Varga2018" "Ellins2014"       "Pruneau2006a"    
    ## [13] "Yarker2013"       "Vize2012"         "Andrews1993"

Then we create the project with the following function:

``` r
createProj(
  name="FTS",
  documents=documents,
  people=c("Ana","Marius","Sara","Luisa","Sergio","Benjamin","JuanGabriel"),
  nameFile="FTS.RData",
  dirProject="../../screening/fullTextScreening/",
  nbReview_categ=c(default=2,missingPdf=2,thesesOrBook=2,unclear=2),
  priority=c("unclear","default","missingPdf","thesesOrBook")
)
```

We load the project that way:

``` r
(load("../../screening/fullTextScreening/FTS.RData"))
```

    ## [1] "FTS"

# 3 Making assignment by hand

Luisa told me that she already started reviewing the documents from the
unclear section:

``` r
FTS<-addManualAssignment(FTS,person="Luisa",documents=documents$unclear)
```

# 4 Making automatic assignments

Sergio asked me 5 documents:

``` r
FTS<-createAssigment_auto(FTS,nbDoc=5,person="Sergio")
```

# 5 Current state

``` r
require(knitr)
```

    ## Loading required package: knitr

``` r
rt<-reviewTable(FTS)
```

Percentage of documents attributed at least once: 100%

Percentage of documents attributed twice: 97.13%

Number of documents attributed by person:

``` r
colSums(rt[,FTS$description$people])
```

    ##         Ana      Marius        Sara       Luisa      Sergio    Benjamin 
    ##         215         139          12          30          83          10 
    ## JuanGabriel 
    ##          25

In the following table, you will see the current state of assigned
document in the Full Text Screening project:

``` r
kable(rt)
```

|                       | Ana | Marius | Sara | Luisa | Sergio | Benjamin | JuanGabriel | total | category | nbMissing | priority |
|-----------------------|----:|-------:|-----:|------:|-------:|---------:|------------:|------:|:---------|----------:|---------:|
| Zografakis2008        |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Klosterman2010        |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Mason1998             |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Svihla2012            |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Sellmann2013a         |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Reinfried2012         |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Otieno2014            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Karpudewan2015a       |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Faria2015             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Baker2013             |   0 |      1 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Vicente2020           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Akaygun2021           |   0 |      1 |    0 |     0 |      0 |        0 |           0 |     1 | default  |         1 |        3 |
| Li2022                |   0 |      0 |    0 |     0 |      0 |        1 |           1 |     2 | default  |         0 |        3 |
| Kabir2015             |   0 |      1 |    0 |     0 |      0 |        0 |           0 |     1 | default  |         1 |        3 |
| Aksel_Stenberdt2023   |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Oberauer2023          |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Kumar2023             |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Catanzaro2023         |   0 |      0 |    1 |     0 |      0 |        1 |           0 |     2 | default  |         0 |        3 |
| Meixner2023           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Littrell2022          |   1 |      0 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Wang2022              |   1 |      0 |    0 |     0 |      0 |        1 |           0 |     2 | default  |         0 |        3 |
| Kolenaty2022          |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Aydogan2022           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Schubatzky2022        |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Skains2022            |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Kubisch2022           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Steffensen2022        |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Sukardi2022           |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Turner2022            |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Nafisah2022           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| White2022             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Herrick2022           |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Gladwin2022           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Hugel2022             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| da_Silva2022          |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| McGowan2022           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Gutierrez2022         |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| van_Zee2022           |   0 |      1 |    0 |     0 |      0 |        1 |           0 |     2 | default  |         0 |        3 |
| Cebesoy2022           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Trott2022             |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Leitao2022            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Muller2021            |   0 |      1 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Hepper2021            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Choi2021              |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Sandoval_Rivera2021   |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Jones2021             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Ross2021              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Bhattacharya2021      |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Leckey2021            |   0 |      1 |    0 |     0 |      0 |        0 |           0 |     1 | default  |         1 |        3 |
| Salas_Rueda2021       |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Pimentel2021          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Bopardikar2021        |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Tallapragada2021      |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Pfirman2021           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Schrot2021a           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Tasti2021             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Wu2021                |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Sezen_Barrie2021      |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Khadka2021            |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Bentz2020             |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Petersen2020          |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Parth2020             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| da_Rocha2020          |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Hosman2020            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Park2020              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Trott2020             |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Sezen_Barrie2020      |   0 |      1 |    0 |     0 |      0 |        1 |           0 |     2 | default  |         0 |        3 |
| Deisenrieder2020      |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Nkoana2020            |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Trott2020a            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Goeschl2020           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Dormody2020           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Kretser2020           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Rooney2021            |   0 |      1 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Prosser_Bravo2020     |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Levrini2019           |   0 |      1 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Salsabila2019         |   1 |      0 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Harker_Schuch2020     |   0 |      1 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Nakamura2019          |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Cebesoy2019           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| de_Sousa2019          |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Bush2019a             |   0 |      1 |    0 |     0 |      0 |        0 |           0 |     1 | default  |         1 |        3 |
| Trott2019             |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Landon2019            |   0 |      1 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Liu2019               |   0 |      1 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Monroe2019            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Walsh2019             |   0 |      1 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Pekel2019             |   1 |      0 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Varela_Losada2019     |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Siegner2018           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Smith2019             |   0 |      1 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Sandhaus2018          |   1 |      0 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Stevenson2018         |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Keller2019            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Breslyn2019           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Plutzer2018           |   1 |      0 |    0 |     0 |      0 |        1 |           0 |     2 | default  |         0 |        3 |
| Puttick2018           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Meya2018              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Walsh2018             |   0 |      1 |    0 |     0 |      0 |        0 |           0 |     1 | default  |         1 |        3 |
| Tomlinson2018         |   1 |      0 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Chang2018             |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Drewes2018            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Stevenson2018a        |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Ozen2018              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Jacobson2017          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Burkholder2017        |   1 |      1 |    0 |     0 |      1 |        0 |           0 |     3 | default  |         0 |        3 |
| Gkotzos2017           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Tasquier2017          |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Karpudewan2017        |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Nicholas_Figueroa2017 |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Eggert2017            |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Korfgen2017           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Blaum2017             |   1 |      0 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Goulah2017            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Carey2017             |   0 |      1 |    1 |     0 |      0 |        1 |           0 |     3 | default  |         0 |        3 |
| Hestness2017          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Chankrajang2017       |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Hu2016                |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Manalo2016            |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Swim2017              |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Arya2016              |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Monroe2016            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Shea2016              |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Chin2016              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Saribaş2016           |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Boon2016              |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Aksut2016             |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Todd2016              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Yoon2016              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Yoon2016a             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Raes2016              |   0 |      0 |    0 |     0 |      1 |        1 |           0 |     2 | default  |         0 |        3 |
| Chong2015             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Logan2015             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Korsager2015          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Tasquier2015          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Karpudewan2015        |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Visintainer2015       |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Sellmann2015          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Bofferding2015        |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Miller2015            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Nussbaum2015          |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Flora2014             |   0 |      1 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Gold2015              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Holthuis2014          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Bodzin2014            |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| DeWaters2014          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Jeong2014             |   0 |      0 |    0 |     0 |      1 |        1 |           0 |     2 | default  |         0 |        3 |
| Sundberg2013          |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Ratinen2013           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Harker_Schuch2013     |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Lambert2013           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Lombardi2013          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Allen2014             |   1 |      1 |    0 |     0 |      1 |        0 |           0 |     3 | default  |         0 |        3 |
| Day2013               |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Roscoe2013            |   0 |      1 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Jin2013               |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Veijalainen2013       |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Sellmann2013          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Kinsey2012            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Makrakis2012          |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Ruboon2012            |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Makrakis2012a         |   0 |      1 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Feldpausch_Parker2013 |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Picketts2012          |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Feierabend2012        |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Varma2012             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| McNeill2012           |   0 |      1 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Lambert2012           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Lombardi2012          |   0 |      0 |    0 |     0 |      1 |        1 |           0 |     2 | default  |         0 |        3 |
| Porter2012            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Koseoglu2011          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Sternang2012          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Bozdogan2011          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Robelia2011           |   1 |      0 |    1 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Taber2009             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Cordero2008           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Pruneau2006           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Lester2006            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Rebich2005            |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Pruneau2003           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Trott2020b            |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Cibik2022             |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Muller2021a           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Kathiresan2021        |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Leckey2021a           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Sumrall2021           |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Lozano2022            |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Eichinger2022         |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Oe2022                |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Williams2017          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Anonymous2021         |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Parant2017            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Kreibich2011          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Gomes2015             |   1 |      1 |    0 |     0 |      1 |        0 |           0 |     3 | default  |         0 |        3 |
| da_Silva2022a         |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Prosser_Bravo2022     |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Silva2021             |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Oliveira2021          |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Bright2020            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Dormody2021           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Aldila2018            |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Roychoudhury2017      |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Kern2017              |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Liu2015               |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Musselman2020         |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Xie2014               |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Bhattacharya2020      |   1 |      1 |    0 |     0 |      0 |        0 |           1 |     3 | default  |         0 |        3 |
| Taylor2020            |   1 |      0 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Le2019                |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Gutierrez2016         |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Chattuchai2015        |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Dal2015a              |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Wallace2018           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| McNeal2014            |   0 |      1 |    0 |     0 |      1 |        0 |           0 |     2 | default  |         0 |        3 |
| Walsh2012             |   1 |      0 |    0 |     1 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Kumar2018             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Ouariachi2017a        |   0 |      1 |    0 |     0 |      0 |        0 |           0 |     1 | default  |         1 |        3 |
| Cohen2013             |   0 |      1 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Swim2013              |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Nauck2020             |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | default  |         0 |        3 |
| Kullar2011            |   1 |      0 |    0 |     0 |      0 |        0 |           1 |     2 | default  |         0 |        3 |
| Öhman2013             |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear  |         0 |        2 |
| Gold2015a             |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| McNeal2014a           |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Stevenson2016a        |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear  |         0 |        2 |
| Lawson2019a           |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Maddox2011            |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Clark2020             |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Ng2019                |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear  |         0 |        2 |
| Markowitz2018         |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Rooney_Varga2018      |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Ellins2014            |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Pruneau2006a          |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear  |         0 |        2 |
| Yarker2013            |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear  |         0 |        2 |
| Vize2012              |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Andrews1993           |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear  |         0 |        2 |
| Bello_Benavides2019   |   1 |      1 |    0 |     0 |      1 |        0 |           0 |     3 | conflict |         0 |        1 |
| Chordnork2012         |   1 |      1 |    0 |     0 |      0 |        0 |           1 |     3 | conflict |         0 |        1 |
| Crouze2023            |   1 |      1 |    0 |     0 |      1 |        0 |           0 |     3 | conflict |         0 |        1 |
| Ferguson2022          |   1 |      0 |    0 |     0 |      1 |        0 |           1 |     3 | conflict |         0 |        1 |
| Schuster2008          |   1 |      0 |    0 |     0 |      1 |        0 |           1 |     3 | conflict |         0 |        1 |
| Sutela2023            |   1 |      1 |    0 |     0 |      0 |        0 |           1 |     3 | conflict |         0 |        1 |
| Zhong2021             |   1 |      0 |    0 |     0 |      1 |        0 |           1 |     3 | conflict |         0 |        1 |
| Levrini2021           |   1 |      1 |    0 |     0 |      0 |        0 |           0 |     2 | conflict |         1 |        1 |
