Example of use of the assignment functions with the documents of the
full text screening
================
Marius Bottin
2023-07-05

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

In the following table, you will see the current state of assigned
document in the Full Text Screening project:

``` r
require(knitr)
```

    ## Loading required package: knitr

``` r
rt<-reviewTable(FTS)
kable(rt)
```

|                       | Ana | Marius | Sara | Luisa | Sergio | Benjamin | JuanGabriel | total | category     | nbMissing | priority |
|-----------------------|----:|-------:|-----:|------:|-------:|---------:|------------:|------:|:-------------|----------:|---------:|
| Zografakis2008        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Klosterman2010        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Mason1998             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Svihla2012            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sellmann2013a         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Reinfried2012         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Otieno2014            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Karpudewan2015a       |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Faria2015             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Baker2013             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Vicente2020           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Akaygun2021           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Li2022                |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kabir2015             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Aksel_Stenberdt2023   |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Oberauer2023          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kumar2023             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sutela2023            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Catanzaro2023         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Crouze2023            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Meixner2023           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Littrell2022          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Wang2022              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kolenaty2022          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Aydogan2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Schubatzky2022        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Skains2022            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kubisch2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Steffensen2022        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sukardi2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Turner2022            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Nafisah2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| White2022             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Herrick2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Gladwin2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Hugel2022             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Ferguson2022          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| da_Silva2022          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| McGowan2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Gutierrez2022         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| van_Zee2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Cebesoy2022           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Trott2022             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Leitao2022            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Muller2021            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Hepper2021            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Choi2021              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sandoval_Rivera2021   |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Zhong2021             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Jones2021             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Ross2021              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Levrini2021           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bhattacharya2021      |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Leckey2021            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Salas_Rueda2021       |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Pimentel2021          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bopardikar2021        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Tallapragada2021      |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Pfirman2021           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Schrot2021a           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Tasti2021             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Wu2021                |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sezen_Barrie2021      |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Khadka2021            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bentz2020             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Petersen2020          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Parth2020             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| da_Rocha2020          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Hosman2020            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Park2020              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Trott2020             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sezen_Barrie2020      |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Deisenrieder2020      |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Nkoana2020            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Trott2020a            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Goeschl2020           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Dormody2020           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kretser2020           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Rooney2021            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Prosser_Bravo2020     |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Levrini2019           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Salsabila2019         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Harker_Schuch2020     |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Nakamura2019          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Cebesoy2019           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| de_Sousa2019          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bush2019a             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Trott2019             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Landon2019            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Liu2019               |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Monroe2019            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Walsh2019             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Pekel2019             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Varela_Losada2019     |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Siegner2018           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Smith2019             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sandhaus2018          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Stevenson2018         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Keller2019            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Breslyn2019           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Plutzer2018           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Puttick2018           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Meya2018              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Walsh2018             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Tomlinson2018         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Chang2018             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Drewes2018            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Stevenson2018a        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Ozen2018              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Jacobson2017          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Burkholder2017        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Gkotzos2017           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Tasquier2017          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Karpudewan2017        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Nicholas_Figueroa2017 |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Eggert2017            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Korfgen2017           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Blaum2017             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Goulah2017            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Carey2017             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Hestness2017          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Chankrajang2017       |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Hu2016                |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Manalo2016            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Swim2017              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Arya2016              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Monroe2016            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Shea2016              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Chin2016              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Saribaş2016           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Boon2016              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Aksut2016             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Todd2016              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Yoon2016              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Yoon2016a             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Raes2016              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Chong2015             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Logan2015             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Korsager2015          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Tasquier2015          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Karpudewan2015        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Visintainer2015       |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sellmann2015          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bofferding2015        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Miller2015            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Nussbaum2015          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Flora2014             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Gold2015              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Holthuis2014          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bodzin2014            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| DeWaters2014          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Jeong2014             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sundberg2013          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Ratinen2013           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Harker_Schuch2013     |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Lambert2013           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Lombardi2013          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Allen2014             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Day2013               |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Roscoe2013            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Jin2013               |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Veijalainen2013       |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sellmann2013          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kinsey2012            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Makrakis2012          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Chordnork2012         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Ruboon2012            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Makrakis2012a         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Feldpausch_Parker2013 |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Picketts2012          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Feierabend2012        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Varma2012             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| McNeill2012           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Lambert2012           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Lombardi2012          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Porter2012            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Koseoglu2011          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sternang2012          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bozdogan2011          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Robelia2011           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Taber2009             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Cordero2008           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Schuster2008          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Pruneau2006           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Lester2006            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Rebich2005            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Pruneau2003           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Trott2020b            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Cibik2022             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Muller2021a           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kathiresan2021        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Leckey2021a           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Sumrall2021           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Lozano2022            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Eichinger2022         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Oe2022                |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Williams2017          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Anonymous2021         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Parant2017            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kreibich2011          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Gomes2015             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| da_Silva2022a         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Prosser_Bravo2022     |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Silva2021             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Oliveira2021          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bello_Benavides2019   |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bright2020            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Dormody2021           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Aldila2018            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Roychoudhury2017      |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kern2017              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Liu2015               |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Musselman2020         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Xie2014               |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Bhattacharya2020      |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Taylor2020            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Le2019                |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Gutierrez2016         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Chattuchai2015        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Dal2015a              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Wallace2018           |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| McNeal2014            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Walsh2012             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kumar2018             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Ouariachi2017a        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Cohen2013             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Swim2013              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Nauck2020             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Kullar2011            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | default      |         2 |        2 |
| Caputo2018            |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| Alexandar2017         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| Wannawichitra2011     |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| Supelano2022          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| Salsabila2019a        |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| Goralnik2019          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| Da_Costa2020          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| McKinzey2010          |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| Vesperman2014         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | missingPdf   |         2 |        3 |
| Tabor2016             |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | thesesOrBook |         2 |        4 |
| Trendell_Nation2017   |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | thesesOrBook |         2 |        4 |
| Lombardi2012a         |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | thesesOrBook |         2 |        4 |
| Choi2012              |   0 |      0 |    0 |     0 |      0 |        0 |           0 |     0 | thesesOrBook |         2 |        4 |
| Öhman2013             |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear      |         0 |        1 |
| Gold2015a             |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| McNeal2014a           |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| Stevenson2016a        |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear      |         0 |        1 |
| Lawson2019a           |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| Maddox2011            |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| Clark2020             |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| Ng2019                |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear      |         0 |        1 |
| Markowitz2018         |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| Rooney_Varga2018      |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| Ellins2014            |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| Pruneau2006a          |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear      |         0 |        1 |
| Yarker2013            |   1 |      1 |    0 |     1 |      1 |        0 |           0 |     4 | unclear      |         0 |        1 |
| Vize2012              |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
| Andrews1993           |   1 |      1 |    0 |     1 |      0 |        0 |           0 |     3 | unclear      |         0 |        1 |
