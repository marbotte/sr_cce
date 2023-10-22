Reading the results of the assignments and extracting the interesting
data (example of a full-text screening exercise)
================
Marius Bottin
2023-10-22

- [1 Numbers](#1-numbers)
- [2 Conflicts](#2-conflicts)
  - [2.1 Inclusion](#21-inclusion)
  - [2.2 Reason of exclusion](#22-reason-of-exclusion)
- [3 Resolved conflicts](#3-resolved-conflicts)
  - [3.1 Yarker2013](#31-yarker2013)
  - [3.2 Rebich2005](#32-rebich2005)
  - [3.3 Robelia2011](#33-robelia2011)
  - [3.4 Otieno2014](#34-otieno2014)
  - [3.5 Clark2020](#35-clark2020)
  - [3.6 Sezen_Barrie2021](#36-sezen_barrie2021)
  - [3.7 Stevenson2016a](#37-stevenson2016a)
  - [3.8 Rooney_Varga2018](#38-rooney_varga2018)
  - [3.9 Andrews1993](#39-andrews1993)
  - [3.10 Koseoglu2011](#310-koseoglu2011)
  - [3.11 Maddox2011](#311-maddox2011)
  - [3.12 Markowitz2018](#312-markowitz2018)
  - [3.13 Öhman2013](#313-öhman2013)
  - [3.14 Ozen2018](#314-ozen2018)
  - [3.15 Picketts2012](#315-picketts2012)
  - [3.16 Prosser_Bravo2020](#316-prosser_bravo2020)
  - [3.17 Vize2012](#317-vize2012)
  - [3.18 Yoon2016a](#318-yoon2016a)
  - [3.19 Jacobson2017](#319-jacobson2017)
  - [3.20 Chong2015](#320-chong2015)
  - [3.21 Deisenrieder2020](#321-deisenrieder2020)
  - [3.22 Eichinger2022](#322-eichinger2022)
  - [3.23 Ellins2014](#323-ellins2014)
  - [3.24 Feierabend2012](#324-feierabend2012)
  - [3.25 Gold2015](#325-gold2015)
  - [3.26 Goulah2017](#326-goulah2017)
  - [3.27 Hosman2020](#327-hosman2020)
  - [3.28 McNeal2014a](#328-mcneal2014a)
  - [3.29 Miller2015](#329-miller2015)
  - [3.30 Ng2019](#330-ng2019)
  - [3.31 Ratinen2013](#331-ratinen2013)
  - [3.32 da_Silva2022](#332-da_silva2022)
  - [3.33 Goelsh2020](#333-goelsh2020)
  - [3.34 Gutierrez2016](#334-gutierrez2016)
  - [3.35 Swim2013](#335-swim2013)
  - [3.36 Kathiresan2021](#336-kathiresan2021)
  - [3.37 Le2019](#337-le2019)
  - [3.38 Logan2015](#338-logan2015)
  - [3.39 Anonymous2021](#339-anonymous2021)
  - [3.40 Bello_Benavides2019](#340-bello_benavides2019)
  - [3.41 Burkholder2017](#341-burkholder2017)
  - [3.42 Carey2017](#342-carey2017)
  - [3.43 Chordnork2012](#343-chordnork2012)
  - [3.44 Ferguson2022](#344-ferguson2022)
  - [3.45 Hugel2022](#345-hugel2022)
  - [3.46 Jin2013](#346-jin2013)
  - [3.47 Kreibich2011](#347-kreibich2011)
  - [3.48 Lambert2012](#348-lambert2012)
  - [3.49 Lombardi2012](#349-lombardi2012)
  - [3.50 McGowan2022](#350-mcgowan2022)
  - [3.51 McNeal2014](#351-mcneal2014)
  - [3.52 Nkoana2020](#352-nkoana2020)
  - [3.53 Oe2022](#353-oe2022)
  - [3.54 Plutzer2021](#354-plutzer2021)
  - [3.55 Pruneau2006a](#355-pruneau2006a)
  - [3.56 Saribaş2016](#356-saribaş2016)
  - [3.57 Siegner2018](#357-siegner2018)
  - [3.58 Sutela2023](#358-sutela2023)
  - [3.59 Todd2016](#359-todd2016)
  - [3.60 Xie2014](#360-xie2014)
  - [3.61 Zhong2021](#361-zhong2021)
  - [3.62 Zografakis2008](#362-zografakis2008)
  - [3.63 Chankrajang2017](#363-chankrajang2017)
  - [3.64 Goeschl2020](#364-goeschl2020)
  - [3.65 Kullar2011](#365-kullar2011)
  - [3.66 Makrakis2012](#366-makrakis2012)
  - [3.67 Makrakis2012a](#367-makrakis2012a)
  - [3.68 Nauck2020](#368-nauck2020)
  - [3.69 Tomlinson2018](#369-tomlinson2018)
  - [3.70 van_Zee2022](#370-van_zee2022)
  - [3.71 Aldila2018](#371-aldila2018)
  - [3.72 Bhattacharya2020](#372-bhattacharya2020)
  - [3.73 Gomes2015](#373-gomes2015)
  - [3.74 Day2013](#374-day2013)
  - [3.75 Liu2019](#375-liu2019)
  - [3.76 Muller2021](#376-muller2021)
  - [3.77 Pimentel2021](#377-pimentel2021)
  - [3.78 Yoon2016](#378-yoon2016)
  - [3.79 Crouze2023](#379-crouze2023)
  - [3.80 Cebesoy2019](#380-cebesoy2019)
  - [3.81 Levrini2019](#381-levrini2019)
  - [3.82 Levrini2021](#382-levrini2021)
  - [3.83 Allen2014](#383-allen2014)
  - [3.84 Meya2018](#384-meya2018)
  - [3.85 Monroe2019](#385-monroe2019)
  - [3.86 Dormody2020](#386-dormody2020)
  - [3.87 Hestness2017](#387-hestness2017)
  - [3.88 Oliveira2021](#388-oliveira2021)
  - [3.89 Plutzer2018](#389-plutzer2018)
  - [3.90 Prosser_Bravo2022](#390-prosser_bravo2022)
  - [3.91 Raes2016](#391-raes2016)
  - [3.92 Schuster2008](#392-schuster2008)
  - [3.93 Sternang2012](#393-sternang2012)
  - [3.94 Bush2019a](#394-bush2019a)
  - [3.95 de_Sousa2019](#395-de_sousa2019)
  - [3.96 Musselman2020](#396-musselman2020)
  - [3.97 Cohen2013](#397-cohen2013)
  - [3.98 Walsh2012](#398-walsh2012)
  - [3.99 Wallace2018](#399-wallace2018)
  - [3.100 da_Silva2022a](#3100-da_silva2022a)
  - [3.101 Oberauer2023](#3101-oberauer2023)
  - [3.102 Ouariachi2017a](#3102-ouariachi2017a)
  - [3.103 Sezen_Barrie2020](#3103-sezen_barrie2020)
  - [3.104 Walsh2018](#3104-walsh2018)
  - [3.105 Bopardikar2021](#3105-bopardikar2021)
  - [3.106 Turner2022](#3106-turner2022)
  - [3.107 Trott2020](#3107-trott2020)
  - [3.108 Ross2021](#3108-ross2021)
  - [3.109 Leckey2021a](#3109-leckey2021a)
- [4 Final Numbers](#4-final-numbers)
  - [4.1 rejection reason table](#41-rejection-reason-table)
  - [4.2 rejection reason numbers](#42-rejection-reason-numbers)
  - [4.3 Missing decisions](#43-missing-decisions)

In order to read the results of the assignments, we put all the
resulting excel files in a unique directory:

``` r
require(openxlsx)
```

    ## Loading required package: openxlsx

``` r
dirResults <- "../../screening/fullTextScreening/DONE/"
patternFiles <- "^assignment([0-9]{1,4})_([A-Za-z]+)_([0-9]+)\\.xlsx$"
finalDecisionFile <- "FinalDecision.xlsx"
finalDecisionTab <- read.xlsx(paste(dirResults,finalDecisionFile,sep="/"))
sheetName <- "Sheet 1"
idDoc <- "abbrev"
(filesResults<-dir(dirResults,pattern=patternFiles))
```

    ##  [1] "assignment1_Luisa_20230705.xlsx"       
    ##  [2] "assignment10_Marius_20230710.xlsx"     
    ##  [3] "assignment11_JuanGabriel_20230711.xlsx"
    ##  [4] "assignment12_Sara_20230711.xlsx"       
    ##  [5] "assignment13_JuanGabriel_20230714.xlsx"
    ##  [6] "assignment14_Marius_20230714.xlsx"     
    ##  [7] "assignment15_Sergio_20230718.xlsx"     
    ##  [8] "assignment16_JuanGabriel_20230718.xlsx"
    ##  [9] "assignment17_Luisa_20230719.xlsx"      
    ## [10] "assignment18_Sergio_20230719.xlsx"     
    ## [11] "assignment19_Ana_20230724.xlsx"        
    ## [12] "assignment2_Sergio_20230705.xlsx"      
    ## [13] "assignment20_Ana_20230724.xlsx"        
    ## [14] "assignment21_Marius_20230725.xlsx"     
    ## [15] "assignment22_Sergio_20230726.xlsx"     
    ## [16] "assignment23_Sergio_20230727.xlsx"     
    ## [17] "assignment24_JuanGabriel_20230727.xlsx"
    ## [18] "assignment25_Ana_20230727.xlsx"        
    ## [19] "assignment26_Ana_20230727.xlsx"        
    ## [20] "assignment27_Marius_20230731.xlsx"     
    ## [21] "assignment28_JuanGabriel_20230731.xlsx"
    ## [22] "assignment29_Sergio_20230731.xlsx"     
    ## [23] "assignment3_Ana_20230705.xlsx"         
    ## [24] "assignment30_Luisa_20230801.xlsx"      
    ## [25] "assignment31_Marius_20230803.xlsx"     
    ## [26] "assignment32_Sergio_20230808.xlsx"     
    ## [27] "assignment33_Marius_20230809.xlsx"     
    ## [28] "assignment34_Luisa_20230809.xlsx"      
    ## [29] "assignment35_Marius_20230810.xlsx"     
    ## [30] "assignment36_Ana_20230810.xlsx"        
    ## [31] "assignment37_Luisa_20230811.xlsx"      
    ## [32] "assignment38_Sergio_20230811.xlsx"     
    ## [33] "assignment39_Luisa_20230816.xlsx"      
    ## [34] "assignment4_Marius_20230705.xlsx"      
    ## [35] "assignment40_Sergio_20230816.xlsx"     
    ## [36] "assignment5_Ana_20230706.xlsx"         
    ## [37] "assignment6_Ana_20230706.xlsx"         
    ## [38] "assignment7_Ana_20230706.xlsx"         
    ## [39] "assignment8_Ana_20230706.xlsx"         
    ## [40] "assignment9_Benjamin_20230706.xlsx"

``` r
assignment<-gsub(patternFiles,"\\1",filesResults)
person<-gsub(patternFiles,"\\2",filesResults)
dateAssign<-gsub(patternFiles,"\\3",filesResults)
listResults<-lapply(paste(dirResults,filesResults,sep="/"),read.xlsx,sheet=sheetName)
nameCol<-lapply(listResults,colnames)
unNameCol<-unique(unlist(nameCol))
docAnalysed<-data.frame(
  assignment=as.numeric(rep(assignment,sapply(listResults,nrow))),
  person=rep(person,sapply(listResults,nrow)),
  id=unlist(lapply(listResults,function(x,a)x[,a],a=idDoc)),
  inclusion=gsub("^ +","",gsub(" +$" ,"", unlist(lapply(listResults,function(x,a)x[,a],a="Inclusion")))),
  reasonExcl=unlist(lapply(listResults,function(x,a)x[,a],a="ReasonExlusion")),
  comment=unlist(lapply(listResults,function(x,a)x[,a],a="Comment"))
  
)

table(docAnalysed$inclusion)
```

    ## 
    ##       0       1   FALSE    TRUE UNCLEAR  UNSURE 
    ##      51      58     138     277       3       3

``` r
docAnalysed$incl<-NA
docAnalysed$incl[docAnalysed$inclusion%in%c("1","TRUE")]<-T
docAnalysed$incl[docAnalysed$inclusion%in%c("0","FALSE")]<-F
table(docAnalysed$incl,useNA="ifany")
```

    ## 
    ## FALSE  TRUE  <NA> 
    ##   189   335    30

Which are the documents which were reviewed more than once:

``` r
nbRev<-table(docAnalysed$id)
(moreThanOnce <- names(nbRev)[nbRev>1])
```

    ##   [1] "Akaygun2021"           "Aksel_Stenberdt2023"   "Aksut2016"            
    ##   [4] "Aldila2018"            "Allen2014"             "Andrews1993"          
    ##   [7] "Anonymous2021"         "Arya2016"              "Aydogan2022"          
    ##  [10] "Baker2013"             "Bello_Benavides2019"   "Bentz2020"            
    ##  [13] "Bhattacharya2020"      "Bhattacharya2021"      "Blaum2017"            
    ##  [16] "Bodzin2014"            "Bofferding2015"        "Boon2016"             
    ##  [19] "Bopardikar2021"        "Bozdogan2011"          "Breslyn2019"          
    ##  [22] "Bright2020"            "Burkholder2017"        "Bush2019a"            
    ##  [25] "Carey2017"             "Catanzaro2023"         "Cebesoy2019"          
    ##  [28] "Cebesoy2022"           "Chang2018"             "Chankrajang2017"      
    ##  [31] "Chattuchai2015"        "Chin2016"              "Choi2021"             
    ##  [34] "Chong2015"             "Chordnork2012"         "Cibik2022"            
    ##  [37] "Clark2020"             "Cohen2013"             "Cordero2008"          
    ##  [40] "Crouze2023"            "da_Rocha2020"          "da_Silva2022"         
    ##  [43] "da_Silva2022a"         "Dal2015a"              "Day2013"              
    ##  [46] "de_Sousa2019"          "Deisenrieder2020"      "DeWaters2014"         
    ##  [49] "Dormody2020"           "Dormody2021"           "Drewes2018"           
    ##  [52] "Eggert2017"            "Eichinger2022"         "Ellins2014"           
    ##  [55] "Faria2015"             "Feierabend2012"        "Feldpausch_Parker2013"
    ##  [58] "Ferguson2022"          "Flora2014"             "Gkotzos2017"          
    ##  [61] "Gladwin2022"           "Goeschl2020"           "Gold2015"             
    ##  [64] "Gold2015a"             "Gomes2015"             "Goulah2017"           
    ##  [67] "Gutierrez2016"         "Gutierrez2022"         "Harker_Schuch2013"    
    ##  [70] "Harker_Schuch2020"     "Hepper2021"            "Herrick2022"          
    ##  [73] "Hestness2017"          "Holthuis2014"          "Hosman2020"           
    ##  [76] "Hu2016"                "Hugel2022"             "Jacobson2017"         
    ##  [79] "Jeong2014"             "Jin2013"               "Jones2021"            
    ##  [82] "Kabir2015"             "Karpudewan2015"        "Karpudewan2015a"      
    ##  [85] "Karpudewan2017"        "Kathiresan2021"        "Keller2019"           
    ##  [88] "Kern2017"              "Khadka2021"            "Kinsey2012"           
    ##  [91] "Klosterman2010"        "Kolenaty2022"          "Korfgen2017"          
    ##  [94] "Korsager2015"          "Koseoglu2011"          "Kreibich2011"         
    ##  [97] "Kretser2020"           "Kubisch2022"           "Kullar2011"           
    ## [100] "Kumar2018"             "Kumar2023"             "Lambert2012"          
    ## [103] "Lambert2013"           "Landon2019"            "Lawson2019a"          
    ## [106] "Le2019"                "Leckey2021"            "Leckey2021a"          
    ## [109] "Leitao2022"            "Lester2006"            "Levrini2019"          
    ## [112] "Levrini2021"           "Li2022"                "Littrell2022"         
    ## [115] "Liu2015"               "Liu2019"               "Logan2015"            
    ## [118] "Lombardi2012"          "Lombardi2013"          "Lozano2022"           
    ## [121] "Maddox2011"            "Makrakis2012"          "Makrakis2012a"        
    ## [124] "Manalo2016"            "Markowitz2018"         "Mason1998"            
    ## [127] "McGowan2022"           "McNeal2014"            "McNeal2014a"          
    ## [130] "McNeill2012"           "Meixner2023"           "Meya2018"             
    ## [133] "Miller2015"            "Monroe2016"            "Monroe2019"           
    ## [136] "Muller2021"            "Muller2021a"           "Musselman2020"        
    ## [139] "Nafisah2022"           "Nakamura2019"          "Nauck2020"            
    ## [142] "Ng2019"                "Nicholas_Figueroa2017" "Nkoana2020"           
    ## [145] "Nussbaum2015"          "Oberauer2023"          "Oe2022"               
    ## [148] "Öhman2013"             "Oliveira2021"          "Otieno2014"           
    ## [151] "Ouariachi2017a"        "Ozen2018"              "Parant2017"           
    ## [154] "Park2020"              "Parth2020"             "Pekel2019"            
    ## [157] "Petersen2020"          "Pfirman2021"           "Picketts2012"         
    ## [160] "Pimentel2021"          "Plutzer2018"           "Porter2012"           
    ## [163] "Prosser_Bravo2020"     "Prosser_Bravo2022"     "Pruneau2003"          
    ## [166] "Pruneau2006"           "Pruneau2006a"          "Puttick2018"          
    ## [169] "Raes2016"              "Ratinen2013"           "Rebich2005"           
    ## [172] "Reinfried2012"         "Robelia2011"           "Rooney_Varga2018"     
    ## [175] "Rooney2021"            "Roscoe2013"            "Ross2021"             
    ## [178] "Roychoudhury2017"      "Ruboon2012"            "Salas_Rueda2021"      
    ## [181] "Salsabila2019"         "Sandhaus2018"          "Sandoval_Rivera2021"  
    ## [184] "Saribaş2016"           "Schrot2021a"           "Schubatzky2022"       
    ## [187] "Schuster2008"          "Sellmann2013"          "Sellmann2013a"        
    ## [190] "Sellmann2015"          "Sezen_Barrie2020"      "Sezen_Barrie2021"     
    ## [193] "Shea2016"              "Siegner2018"           "Silva2021"            
    ## [196] "Skains2022"            "Smith2019"             "Steffensen2022"       
    ## [199] "Sternang2012"          "Stevenson2016a"        "Stevenson2018"        
    ## [202] "Stevenson2018a"        "Sukardi2022"           "Sumrall2021"          
    ## [205] "Sundberg2013"          "Sutela2023"            "Svihla2012"           
    ## [208] "Swim2013"              "Swim2017"              "Taber2009"            
    ## [211] "Tallapragada2021"      "Tasquier2015"          "Tasquier2017"         
    ## [214] "Tasti2021"             "Taylor2020"            "Todd2016"             
    ## [217] "Tomlinson2018"         "Trott2019"             "Trott2020"            
    ## [220] "Trott2020a"            "Trott2020b"            "Trott2022"            
    ## [223] "Turner2022"            "van_Zee2022"           "Varela_Losada2019"    
    ## [226] "Varma2012"             "Veijalainen2013"       "Vicente2020"          
    ## [229] "Visintainer2015"       "Vize2012"              "Wallace2018"          
    ## [232] "Walsh2012"             "Walsh2018"             "Walsh2019"            
    ## [235] "Wang2022"              "White2022"             "Williams2017"         
    ## [238] "Wu2021"                "Xie2014"               "Yarker2013"           
    ## [241] "Yoon2016"              "Yoon2016a"             "Zhong2021"            
    ## [244] "Zografakis2008"

``` r
mTO_noFinalD <- moreThanOnce[!moreThanOnce%in%finalDecisionTab$abbrev]
conflictOnInclusion <- by(docAnalysed[docAnalysed$id%in%mTO_noFinalD,],docAnalysed$id[docAnalysed$id%in%mTO_noFinalD],function(tab)
  {
    any(is.na(tab$incl))|length(unique(tab$incl))>1
  },simplify = T)
(w_conflict_incl <- names(conflictOnInclusion)[conflictOnInclusion])
```

    ## character(0)

``` r
toTest_conflictReason<-mTO_noFinalD[!mTO_noFinalD%in%w_conflict_incl]
conflictOnReason <- by(docAnalysed[docAnalysed$id%in%toTest_conflictReason,],docAnalysed$id[docAnalysed$id%in%toTest_conflictReason],function(tab)
  {
    length(unique(tab$reasonExcl))>1
  },simplify=T)
(w_conflict_reason<-names(conflictOnReason)[conflictOnReason])
```

    ## character(0)

# 1 Numbers

Number of article reviewed by more than one person:

``` r
length(moreThanOnce)
```

    ## [1] 244

Number of papers accepted without conflict:

``` r
accepted <- by(docAnalysed[docAnalysed$id%in%moreThanOnce,],docAnalysed$id[docAnalysed$id%in%moreThanOnce],function(tab)
  {
    all(tab$incl)
  },simplify = T)
sum(na.omit(as.logical(accepted)))
```

    ## [1] 122

Reason of exclusions when excluded without conflicts:

``` r
exclusionReason <- by(docAnalysed[docAnalysed$id%in%moreThanOnce,],docAnalysed$id[docAnalysed$id%in%moreThanOnce],function(tab)
  {
    if(!any(is.na(tab$incl))&all(!tab$incl))
    {return(unique(tab$reasonExcl))}else
    {return(NA)}
  
  },simplify = T)
#exclusionReason
(reasonOK<-exclusionReason[sapply(exclusionReason,function(x)length(x)==1&!any(is.na(x)))])
```

    ## $Aydogan2022
    ## [1] "Population"
    ## 
    ## $Bright2020
    ## [1] "Intervention"
    ## 
    ## $Catanzaro2023
    ## [1] "I+O"
    ## 
    ## $Cordero2008
    ## [1] "Population"
    ## 
    ## $Gkotzos2017
    ## [1] "Outcome"
    ## 
    ## $Hepper2021
    ## [1] "Population"
    ## 
    ## $Jeong2014
    ## [1] "Outcome"
    ## 
    ## $Kretser2020
    ## [1] "Outcome"
    ## 
    ## $Kumar2018
    ## [1] "Population"
    ## 
    ## $Landon2019
    ## [1] "Population"
    ## 
    ## $Manalo2016
    ## [1] "Outcome"
    ## 
    ## $Meixner2023
    ## [1] "Population"
    ## 
    ## $Pfirman2021
    ## [1] "Population"
    ## 
    ## $Rooney2021
    ## [1] "I+O"
    ## 
    ## $Sandhaus2018
    ## [1] "Population"
    ## 
    ## $Sandoval_Rivera2021
    ## [1] "Outcome"
    ## 
    ## $Swim2017
    ## [1] "Population"
    ## 
    ## $Tallapragada2021
    ## [1] "Outcome"
    ## 
    ## $Varela_Losada2019
    ## [1] "Outcome"
    ## 
    ## $Wu2021
    ## [1] "Intervention"

# 2 Conflicts

## 2.1 Inclusion

``` r
require(kableExtra)
```

    ## Loading required package: kableExtra

``` r
for(i in w_conflict_incl)
{
  cat('### ',i,'\n\n')
  tab_toShow<-docAnalysed[docAnalysed$id==i,c("assignment","person","incl","reasonExcl","comment")]
  #tab_toShow$comment[!is.na(tab_toShow$comment)&nchar(tab_toShow$comment)>50]<-paste(substr(tab_toShow$comment[!is.na(tab_toShow$comment)&nchar(tab_toShow$comment)>50],1,46),"...")
  cat(kable(tab_toShow,format="html"))
  cat("\n\n")
}
```

## 2.2 Reason of exclusion

``` r
require(kableExtra)
for(i in w_conflict_reason)
{
  cat('### ',i,'\n\n')
  tab_toShow<-docAnalysed[docAnalysed$id==i,c("assignment","person","incl","reasonExcl","comment")]
  #tab_toShow$comment[!is.na(tab_toShow$comment)&nchar(tab_toShow$comment)>50]<-paste(substr(tab_toShow$comment[!is.na(tab_toShow$comment)&nchar(tab_toShow$comment)>50],1,46),"...")
  cat(kable(tab_toShow,format="html"))
  cat("\n\n")
}
```

# 3 Resolved conflicts

``` r
resolved<-finalDecisionTab$abbrev
for(i in resolved)
{
  cat('## ',i,'\n\n')
  tab_toShow<-docAnalysed[docAnalysed$id==i,c("assignment","person","incl","reasonExcl","comment")]
  #tab_toShow$comment[!is.na(tab_toShow$comment)&nchar(tab_toShow$comment)>50]<-paste(substr(tab_toShow$comment[!is.na(tab_toShow$comment)&nchar(tab_toShow$comment)>50],1,46),"...")
  cat(kable(tab_toShow,format="html"))
  cat("\n\n")
  cat("**Decision**:\n\n")
  cat(kable(finalDecisionTab[finalDecisionTab$abbrev==i,],format="html"))
  cat("\n\n")
}
```

## 3.1 Yarker2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

13

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Thesis

</td>
</tr>
<tr>
<td style="text-align:left;">

147

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

345

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

thesis

</td>
</tr>
<tr>
<td style="text-align:left;">

440

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Tesis

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

Yarker2013

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Thesis

</td>
</tr>
</tbody>
</table>

## 3.2 Rebich2005

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

62

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

Población de estudiantes de pregrado.

</td>
</tr>
<tr>
<td style="text-align:left;">

464

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

university students

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

2

</td>
<td style="text-align:left;">

Rebich2005

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.3 Robelia2011

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

57

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:left;">

Sara

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

536

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

3

</td>
<td style="text-align:left;">

Robelia2011

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.4 Otieno2014

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

63

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

University students

</td>
</tr>
<tr>
<td style="text-align:left;">

496

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

4

</td>
<td style="text-align:left;">

Otieno2014

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.5 Clark2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

7

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

-This article contains no intervention. If fact the goal is to see how
teachers figure out teaching about climate change given that the Next
Generation Science Standards doesnt prepare them for that. -This article
is evidence of the need to support teachers, on how to teach about CC
and its sociopolitical implications. The Next Generation Science
Standars leaves this responsibiliy on teachers.

</td>
</tr>
<tr>
<td style="text-align:left;">

339

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

434

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

I think including it would be problematic because it is a description of
discussion in class… I don’t see how to integrate it in our analyses

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

5

</td>
<td style="text-align:left;">

Clark2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.6 Sezen_Barrie2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

99

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

No es muy clara la intervención y el resultado con los docentes.
Pareciera ser que la intervención es más un ejercicio de diálogo entre
científicos y docentes sobre las prácticas pedagógicas y la enseñanza
del cambio climático y no ofrece un cambio en conocimientos, actituted o
emociones.

</td>
</tr>
<tr>
<td style="text-align:left;">

506

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

6

</td>
<td style="text-align:left;">

Sezen_Barrie2021

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.7 Stevenson2016a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

There is no intervention, this is a survey.

</td>
</tr>
<tr>
<td style="text-align:left;">

144

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

336

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

es sobre como los pensamientos de los profesores influencian las
creencias de sus estudiantes – ‘’we found that teachers’ belief that
global warming was happening was a strong, positive predictor of
students’ belief that global warming was happening and human caused’’

</td>
</tr>
<tr>
<td style="text-align:left;">

431

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

I guess the doubt to keep this paper was to see whether some kind of
common intervention was done to test whether the influence of teachers
was rationalizable, it is not!

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

7

</td>
<td style="text-align:left;">

Stevenson2016a

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.8 Rooney_Varga2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

10

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

The reports dont emphasize young population

</td>
</tr>
<tr>
<td style="text-align:left;">

342

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

mezclan a la poblacion (colegio, universidad) en los descenlaces

</td>
</tr>
<tr>
<td style="text-align:left;">

437

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I am not sure though that we will be able to extract much outcomes
concerning only the children

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

8

</td>
<td style="text-align:left;">

Rooney_Varga2018

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.9 Andrews1993

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

15

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

347

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

442

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Missing Full Text

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

9

</td>
<td style="text-align:left;">

Andrews1993

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

MissingPdf

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.10 Koseoglu2011

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

82

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

The outcomes are about the engagement of the students in the activity,
not directly related to CC, even though there is a CC aspect in the
activity.

</td>
</tr>
<tr>
<td style="text-align:left;">

487

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

10

</td>
<td style="text-align:left;">

Koseoglu2011

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

The outcome is on the feeling on the intervention

</td>
</tr>
</tbody>
</table>

## 3.11 Maddox2011

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Intergenerational learning on handling Waste in UK with primary and
secondary students. Outcome qualitative and quantitative. Not really
about climate change

</td>
</tr>
<tr>
<td style="text-align:left;">

338

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

433

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

Climate is only mentioned once in the introduction. It could be
important for climate mitigation… remotely! But it does not seem to be
the focus of the author…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

11

</td>
<td style="text-align:left;">

Maddox2011

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

CC not central

</td>
</tr>
</tbody>
</table>

## 3.12 Markowitz2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

9

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Study one seems pertinent but im not sure. Output measures don´t
strictly mention climate change but leave the connection to students
answers

</td>
</tr>
<tr>
<td style="text-align:left;">

341

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

no estoy segura por la manera en la que se reportan los resultados,
mezclan high school students con university

</td>
</tr>
<tr>
<td style="text-align:left;">

436

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Study 1 OK, Study 2 No (population), Study 3 No (population), Study 4 No
(population)

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

12

</td>
<td style="text-align:left;">

Markowitz2018

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Only study 1

</td>
</tr>
</tbody>
</table>

## 3.13 Öhman2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

I dont see an intervention. Authors mention teachers apistemological
moves but report them in the analysis. Maybe the intervention is broadly
defined as the participatory teaching method but then it is really
difficult to disentangle intervention from outcome. There are no
comparison groups (before after or two experimental conditions like
participatory and non participatory) so it isn’t possible to say whether
this way of teaching is actually changing anything.

</td>
</tr>
<tr>
<td style="text-align:left;">

333

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

428

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

13

</td>
<td style="text-align:left;">

Öhman2013

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

To ask Luisa

</td>
</tr>
</tbody>
</table>

## 3.14 Ozen2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

30

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

school climate!!!!

</td>
</tr>
<tr>
<td style="text-align:left;">

132

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

NO INTERVENTION

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

14

</td>
<td style="text-align:left;">

Ozen2018

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.15 Picketts2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

102

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

No es claro que los participantes estén dento del círculo cercano de los
niños, niñas y adolescentes, o que puedan incidir sobre estos.
Pertenecen a una comunidad, pero no se ofrecen mayores detalles.

</td>
</tr>
<tr>
<td style="text-align:left;">

515

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NO PDF

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

15

</td>
<td style="text-align:left;">

Picketts2012

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.16 Prosser_Bravo2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

22

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

No outcome analysed

</td>
</tr>
<tr>
<td style="text-align:left;">

126

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

16

</td>
<td style="text-align:left;">

Prosser_Bravo2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.17 Vize2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

14

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

There is no intervention and there fore no outcome. The article talks
about a case-study but it reviews private and public attempts to deal
with CC in education in the Pacific

</td>
</tr>
<tr>
<td style="text-align:left;">

346

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

441

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

I do not see any extractable outcome…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

17

</td>
<td style="text-align:left;">

Vize2012

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.18 Yoon2016a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

76

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

The measured outcomes concern satisfaction of the student concerning the
intervention, not directly cognition, intent and habits of students on
climate change.

</td>
</tr>
<tr>
<td style="text-align:left;">

531

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

18

</td>
<td style="text-align:left;">

Yoon2016a

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.19 Jacobson2017

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

133

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

1 PAGE

</td>
</tr>
<tr>
<td style="text-align:left;">

183

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

The paper is very interesting in comparing different ways to teach
complex systems to the students. One could argue that the ultimate goal
of the paper is complex system thinking, not CC. However the authors are
very consistent in describing always complex thinking AND CC. Therefore
I would tend to keep this paper, even though we might to have to be
careful in our extraction of the outcomes

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

19

</td>
<td style="text-align:left;">

Jacobson2017

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.20 Chong2015

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

136

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

185

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

StudyType: book, Since it is a book chapter, I did not read it…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

20

</td>
<td style="text-align:left;">

Chong2015

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Book Chapter

</td>
</tr>
</tbody>
</table>

## 3.21 Deisenrieder2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

154

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

179

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I understand that it is difficult to consider “Fridays For Future” as an
intervention… However we need to think about whether (I) education has
to come from a figure of authority (ii) the interaction between the
kidz21 program and FFF could be considered here. I am afraid that
excluding this study may make us miss an important aspect of CC
awareness gain for youth from the last years

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

21

</td>
<td style="text-align:left;">

Deisenrieder2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Friday For Future

</td>
</tr>
</tbody>
</table>

## 3.22 Eichinger2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

210

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

539

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

es un protocolo no tiene resultados

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

22

</td>
<td style="text-align:left;">

Eichinger2022

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Protocol, intervention not really done

</td>
</tr>
</tbody>
</table>

## 3.23 Ellins2014

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

11

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

-This article describes an intervention with a good level of detail. It
reports on teachers satisfaction with the intervention and mention SELF
REPORT on learning but there are no measures of anything.

</td>
</tr>
<tr>
<td style="text-align:left;">

343

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

438

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

I have the feeling this is unsuficient in terms of outcomes, but that
should be discussed… See my pdf file with yellow highlighter…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

23

</td>
<td style="text-align:left;">

Ellins2014

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.24 Feierabend2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

81

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

No idea what to do here, the objective of the research is to measure the
complexity of arguments from students, however the 2 chosen topics are
related to climate change, more specifically on political decisions that
would reduce the energy consumption, and the results show that
discussions on these topics lead to more complex reasoning in the
students arguments…

</td>
</tr>
<tr>
<td style="text-align:left;">

462

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

24

</td>
<td style="text-align:left;">

Feierabend2012

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.25 Gold2015

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

189

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

While there is a claim that some statistical quantitative analysis have
been done concerning the knowledge and science behind CC have been made,
my quick reading did not find any numbers. Anyway the authors and
teachers claim that the effect is positive on that topic, sufficient for
now, right? Careful though, the authors insist a lot on the motivation
and some other effects of the activity, we will have to filter in our
analysis for the synthesis

</td>
</tr>
<tr>
<td style="text-align:left;">

460

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

how to communicate about scientific topics

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

25

</td>
<td style="text-align:left;">

Gold2015

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Nothing extractable

</td>
</tr>
</tbody>
</table>

## 3.26 Goulah2017

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

31

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

They are 2 main goals of the intervention: language and CCE, however the
authors have specific conclusions about CCE. This is strongly
qualitative and we need to think how to extract! Many complicated words
and concepts, for me!

</td>
</tr>
<tr>
<td style="text-align:left;">

135

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

26

</td>
<td style="text-align:left;">

Goulah2017

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Very qualitative

</td>
</tr>
</tbody>
</table>

## 3.27 Hosman2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

178

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

I do not see much outcomes concerning CCE that we could use in the next
steps. It is a good example on how to improve access to CCE material
though.

</td>
</tr>
<tr>
<td style="text-align:left;">

454

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

27

</td>
<td style="text-align:left;">

Hosman2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.28 McNeal2014a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

Intervention doesnt directly address climate change although it is
contextualied by the authors in the introduction as relevant to climate
change. The paper is focused on the intervention but there is not
outcome directly talking about climate change. However, it seems to me
that this is a tendency of interventions within the frame of the NGSS.

</td>
</tr>
<tr>
<td style="text-align:left;">

335

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

430

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

28

</td>
<td style="text-align:left;">

McNeal2014a

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Is it possible Luisa looked at McNeal2014 (without a)?

</td>
</tr>
</tbody>
</table>

## 3.29 Miller2015

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

138

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

188

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

There is no way to separate the outcomes for students from university
and from student from late secondary schools…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

29

</td>
<td style="text-align:left;">

Miller2015

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Careful on age at the extraction!

</td>
</tr>
</tbody>
</table>

## 3.30 Ng2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

8

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Output. Not sure is relevant. Authors are concerned with evaluating the
intervention (EARTH MODULE) not the change in the students (see table 3)

</td>
</tr>
<tr>
<td style="text-align:left;">

145

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

340

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

435

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

While it is mostly focused on the technical implementations, there are
some data we can use about cognition

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

30

</td>
<td style="text-align:left;">

Ng2019

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.31 Ratinen2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

161

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

229

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

No hay intervention.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

31

</td>
<td style="text-align:left;">

Ratinen2013

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

There is an intervention!

</td>
</tr>
</tbody>
</table>

## 3.32 da_Silva2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

202

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

It’s about protection and knowledge of earthquakes. Not sure it
qualifies as CC even though they claim so.

</td>
</tr>
<tr>
<td style="text-align:left;">

472

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

32

</td>
<td style="text-align:left;">

da_Silva2022

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.33 Goelsh2020

<table>
<thead>
<tr>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

33

</td>
<td style="text-align:left;">

Goelsh2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.34 Gutierrez2016

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

196

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

StudyType: PhD thesis

</td>
</tr>
<tr>
<td style="text-align:left;">

467

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

THESIS

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

34

</td>
<td style="text-align:left;">

Gutierrez2016

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Thesis

</td>
</tr>
</tbody>
</table>

## 3.35 Swim2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

197

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

It is about people presenting CC in museum, zoos etc. So the objective
is the general public, children are not mentionned as a clear objective

</td>
</tr>
<tr>
<td style="text-align:left;">

519

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

35

</td>
<td style="text-align:left;">

Swim2013

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.36 Kathiresan2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

165

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

farmers

</td>
</tr>
<tr>
<td style="text-align:left;">

191

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

It’s about the needs of a farmer community about risks associated with
climate change in their professional practices, but it does not concern
children, which although they might be part of the community, are not
mentioned. There is no pedagogical intervention and therefore, neither
is there outcome

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

36

</td>
<td style="text-align:left;">

Kathiresan2021

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.37 Le2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

195

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

StudyType: thesis

</td>
</tr>
<tr>
<td style="text-align:left;">

543

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

thesis

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

37

</td>
<td style="text-align:left;">

Le2019

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Thesis

</td>
</tr>
</tbody>
</table>

## 3.38 Logan2015

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

160

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

performance climate, not climate change

</td>
</tr>
<tr>
<td style="text-align:left;">

186

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

Not about CC, about climate in physical education (How the hell did that
pass through?)

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

38

</td>
<td style="text-align:left;">

Logan2015

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.39 Anonymous2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

167

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

309

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

StudyType: conference. It is not really about CC, and there is not
enough information

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

39

</td>
<td style="text-align:left;">

Anonymous2021

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.40 Bello_Benavides2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

85

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

They did not measure or describe any effect on the student, there are
some reasoning about the advantages of the intervention, and about the
difficulties to implement, but I do not see anything that we might use
in the future steps of the analysis…

</td>
</tr>
<tr>
<td style="text-align:left;">

318

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Outcomes more geared towards satisfaction with the intervention rather
than climate per se.

</td>
</tr>
<tr>
<td style="text-align:left;">

542

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

40

</td>
<td style="text-align:left;">

Bello_Benavides2019

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

satisfaction/advantage of the intervention in a pedagogical reflection

</td>
</tr>
</tbody>
</table>

## 3.41 Burkholder2017

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

157

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

college students

</td>
</tr>
<tr>
<td style="text-align:left;">

217

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

393

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

I read carefully this paper to see whether it was a program for student
in education, it is not, so the population here is just young college
adults, not the entourage of children…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

41

</td>
<td style="text-align:left;">

Burkholder2017

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

College students

</td>
</tr>
</tbody>
</table>

## 3.42 Carey2017

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

56

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:left;">

Sara

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

394

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

I agree with Sara that the population is university students here

</td>
</tr>
<tr>
<td style="text-align:left;">

551

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:left;">

Benjamin

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

42

</td>
<td style="text-align:left;">

Carey2017

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

University students

</td>
</tr>
</tbody>
</table>

## 3.43 Chordnork2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

34

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

If we consider the teachers as the population then there is no outcome
measured or described, if we consider the students, then no intervention
is described…

</td>
</tr>
<tr>
<td style="text-align:left;">

140

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

316

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

No hay intervención y el outcome no se relaciona con el conocimiento,
actitudes o comportamientos. El estudio solo se limita a ver las
prácticas de educación en un tema como calentamiento global.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

43

</td>
<td style="text-align:left;">

Chordnork2012

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.44 Ferguson2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

89

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

314

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Este artículo me deja con grandes dudas sobre el outcome porque no veo
tan claro que haya habido una incidencia sobre conocimientos,
comportamientos o emociones, tal vez solo la prospectiva de "hacia
futuro" que hacen en las actividades.

</td>
</tr>
<tr>
<td style="text-align:left;">

521

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

44

</td>
<td style="text-align:left;">

Ferguson2022

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.45 Hugel2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

270

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

289

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

The authors claim that there is a positive effect in terms of cognition
(of the pedagogical classical intervention and the game) and that it has
been tested on a cohort. However, the presented outcomes are light to
say the least, and they focus more on other aspects concerning the game
technical and conceptual issues.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

45

</td>
<td style="text-align:left;">

Hugel2022

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.46 Jin2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

111

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

The intervention is on knowledge and the outcome is thought process,
that is, whether students thinking reflect complex patterns. FROM
Classifying and connecting processes based on perceptions, locations,
and sequence of events TO classifying processes into three classes of
carbon-transforming processes and to connect them in terms of the carbon
cycle and the energy ﬂow. So rather than learning alone, this is about
learning to think about complex things like climate change

</td>
</tr>
<tr>
<td style="text-align:left;">

398

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I am not sure why there was a doubt about including this one, it might
be because the energy vocabulary is not mentioning directly CC, but the
intervention is about the science of climate change… It may be because
of the methodology, but since we accepted qualitative studies, we ought
to accept this one as well…

</td>
</tr>
<tr>
<td style="text-align:left;">

534

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

46

</td>
<td style="text-align:left;">

Jin2013

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.47 Kreibich2011

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

257

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

368

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I

</td>
<td style="text-align:left;">

General public, no intervention

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

47

</td>
<td style="text-align:left;">

Kreibich2011

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.48 Lambert2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

252

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

pre service teachers

</td>
</tr>
<tr>
<td style="text-align:left;">

365

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

University students

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

48

</td>
<td style="text-align:left;">

Lambert2012

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.49 Lombardi2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

95

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

University students, not high school or younger.

</td>
</tr>
<tr>
<td style="text-align:left;">

399

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

University students (p. 206)

</td>
</tr>
<tr>
<td style="text-align:left;">

554

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:left;">

Benjamin

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

49

</td>
<td style="text-align:left;">

Lombardi2012

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.50 McGowan2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

271

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

increasing ocean temperatures and the rate and severity of disease
outbreaks in sea stars. // NO SE si es un deselnace de interes

</td>
</tr>
<tr>
<td style="text-align:left;">

323

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

400

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

The extraction process will definitely be difficult, because the outcome
measurements are not clear, but the authors clearly link the sea stars
disease outbreaks to climate change, and use that to create an emotional
response to Climate Change in the children, so I think it meets the
criteria

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

50

</td>
<td style="text-align:left;">

McGowan2022

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.51 McNeal2014

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

39

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

385

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+O

</td>
<td style="text-align:left;">

Population not exclusively of K12 educators or other entourage. Also not
all results are directly linked to CC, some about political
organization, feeling their views were taken into account and respected…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

51

</td>
<td style="text-align:left;">

McNeal2014

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.52 Nkoana2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

124

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

234

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

No es clara una intervención aquí, se hacen discusiones en grupos
focales pero no se proporcionan datos o información que lleve a un
cambio.

</td>
</tr>
<tr>
<td style="text-align:left;">

401

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I would tend to disagree with Juan Gabriel here and consider that focal
groups discussion are presented as an educative intervention, and that
the results and comparison of the two groups are analysed as such. This
is one of the papers were extraction will be difficult, but in my
opinion, the paper meets the criteria…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

52

</td>
<td style="text-align:left;">

Nkoana2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.53 Oe2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

387

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

Intervention is not too clear, deals with youth centers and similar.
Outcomes also seem to deal more with how to implement them rather than
CC.

</td>
</tr>
<tr>
<td style="text-align:left;">

402

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

I’ve got various issues with this papers: first it is difficult to see
which is the population and whether it corresponds to our criteria: if
it is the student there are from university, if it is the teachers it
appears that they are the teachers from the students (university), if
the population is the people from the community youth centers, well, we
do not have enough information about them! Concerning the outcomes, well
the pedagogical discourse is analysed, not the effect on those who
receive the discourse. So there is a mix of problem from population and
outcomes which tend to make me reject this document, however the reason
is very blurry even though I spent quite some time on the document…

</td>
</tr>
<tr>
<td style="text-align:left;">

490

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

53

</td>
<td style="text-align:left;">

Oe2022

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.54 Plutzer2021

<table>
<thead>
<tr>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

54

</td>
<td style="text-align:left;">

Plutzer2021

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.55 Pruneau2006a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

12

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

THere is no emphasis on how behavioral change o teachers would affect
students

</td>
</tr>
<tr>
<td style="text-align:left;">

146

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

344

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

no estoy segura porque solo se evalua el cambio de comportamiento en los
maestros

</td>
</tr>
<tr>
<td style="text-align:left;">

439

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

55

</td>
<td style="text-align:left;">

Pruneau2006a

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Careful the effect on children is difficult to see here

</td>
</tr>
</tbody>
</table>

## 3.56 Saribaş2016

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

43

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

La población es de estudiantes de una universidad en un curso de
educación ambiental adscrito a un programa de educación elemental.

</td>
</tr>
<tr>
<td style="text-align:left;">

406

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

We said that pre-service teachers would be accepted as children
entourage

</td>
</tr>
<tr>
<td style="text-align:left;">

529

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

56

</td>
<td style="text-align:left;">

Saribaş2016

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.57 Siegner2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

155

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

1 PAGE

</td>
</tr>
<tr>
<td style="text-align:left;">

231

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

407

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

It is a complete yes, I would even go further and say that it could be a
test paper for the extraction because it is clearly in our objectives
but will pose issues at the extraction (both teachers and students
considered, various outcomes of interest etc.)

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

57

</td>
<td style="text-align:left;">

Siegner2018

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.58 Sutela2023

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

17

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

I really do not see that we will be able to extract any information from
this paper. However, it might be because I do not see yet that we can
extract any information from any qualitative paper. So a second opinion
is needed here. The population here is the future teachers, and the
intervention is the activity on composing music which allows a
communication about climate change, however this is highly theoretical
in my opinion…

</td>
</tr>
<tr>
<td style="text-align:left;">

118

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

sustainable music education,

</td>
</tr>
<tr>
<td style="text-align:left;">

313

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

La población de este proyecto es de un entorno, diría yo, muy lejano de
los niños y niñas. Si bien el proyecto puede tener una intervención
dirigida al aumento de la consciencia sobre el cambio climático, no sé
si propósito se centre específicamente en niños y niñas.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

58

</td>
<td style="text-align:left;">

Sutela2023

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.59 Todd2016

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

282

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

The results also suggest that our students were more prepared to think
critically about scientific inquiry than about ethical inquiry regarding
anthropogenic climate change.

</td>
</tr>
<tr>
<td style="text-align:left;">

302

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

University student (Northern Arizona University, p.52)

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

59

</td>
<td style="text-align:left;">

Todd2016

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.60 Xie2014

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

390

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Outcome deals with implementation rather than CC.

</td>
</tr>
<tr>
<td style="text-align:left;">

408

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

It is true that the majority of the results concern the implementation
and motivation toward the activity, so it would be in the part of
debates concerning integration due to outcomes that may not be exactly
what we search, however, if you look at table 9 p. 130, these results
concern knowledge and attitudes!

</td>
</tr>
<tr>
<td style="text-align:left;">

493

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

60

</td>
<td style="text-align:left;">

Xie2014

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.61 Zhong2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

153

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

children’s flood risk perceptions

</td>
</tr>
<tr>
<td style="text-align:left;">

232

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

315

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

61

</td>
<td style="text-align:left;">

Zhong2021

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.62 Zografakis2008

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

238

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

the outcome its energy-squandering behavior // the intervention its for
energy efficiency, not sure if its related to CC

</td>
</tr>
<tr>
<td style="text-align:left;">

332

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

409

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I understand the issue Ana have with this paper, climate change is only
mentioned at the beginning of the introduction. However, CC main topic
is energy, and for me it is right in the topic. There might be a debate
though because we should maybe base this criterium on the author
discourses instead of external knowledge.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

62

</td>
<td style="text-align:left;">

Zografakis2008

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.63 Chankrajang2017

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

248

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

nationally representative surveys on environmental issues

</td>
</tr>
<tr>
<td style="text-align:left;">

298

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I

</td>
<td style="text-align:left;">

This is a general article observing the relationship between formal
education and environmental behavior. It describes the effect of an
“educative environment on citizen pro-environmental behavior, but there
is no real intervention here. Moreover only the first group might
interest us but it goes beyond our target population (15-19 y. old)

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

63

</td>
<td style="text-align:left;">

Chankrajang2017

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.64 Goeschl2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

125

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NOT SCHOOL STUDENTS

</td>
</tr>
<tr>
<td style="text-align:left;">

180

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

Population of adults, the game is not really a pedagogical intervention
and the outcomes, consequently do not show any useful information for
us…

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

64

</td>
<td style="text-align:left;">

Goeschl2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.65 Kullar2011

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

172

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

thesis

</td>
</tr>
<tr>
<td style="text-align:left;">

237

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

Es una disertación doctoral y no está dentro de los parámetros de
nuestra búsqueda. Además, es el tema abordado es school climate.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

65

</td>
<td style="text-align:left;">

Kullar2011

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

PhD thesis

</td>
</tr>
</tbody>
</table>

## 3.66 Makrakis2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

383

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

Article deals with creating the actual web-intervention rather than
testing it on actual population. It does mention how it could be tested
but has not actually done so.

</td>
</tr>
<tr>
<td style="text-align:left;">

514

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

no outcomes

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

66

</td>
<td style="text-align:left;">

Makrakis2012

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.67 Makrakis2012a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

35

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

While the paper show a very interesting framework for web-based CCE,
there is no actual intervention, nor outcomes presented…

</td>
</tr>
<tr>
<td style="text-align:left;">

112

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

There is a very interesting description of an intervention, but it is
not enacted and thus there is no PÍO

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

67

</td>
<td style="text-align:left;">

Makrakis2012a

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.68 Nauck2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

287

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

intergenerational transmission processes // EDUCATION CLIMATE, NOT ABOUT
CC

</td>
</tr>
<tr>
<td style="text-align:left;">

312

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

That is not about climate change, how it is possible that it got through
title/abstract screening? Is there a mix-up between papers?

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

68

</td>
<td style="text-align:left;">

Nauck2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.69 Tomlinson2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

54

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:left;">

Sara

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

479

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

farmers school

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

69

</td>
<td style="text-align:left;">

Tomlinson2018

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.70 van_Zee2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

65

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

I am actually having a hard time deciding whether to keep or reject this
one. There is a doubt because children serve as “teachers” here, but we
could argue that one of the goals is actually to improve the student
knowledge… So it is debattable. However this is a “preliminary study
report” so the outcomes are not very precisely analysed, However some
sentences in the discussions may be interpreted as a real progress in
the student view of the CC, both in terms of knowledge and awareness!

</td>
</tr>
<tr>
<td style="text-align:left;">

548

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:left;">

Benjamin

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

70

</td>
<td style="text-align:left;">

van_Zee2022

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.71 Aldila2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

260

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

310

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

The intervention is about CC, but the study is about gender attitudes
toward science. And yes, in 2018, classes are still separated between
boys and girls in Indonesia! Anyway it would be possible to include it
by considering that “science” is CC because the intervention is about
Climate Change, but I would tend to reject it, maybe I am not objective
though (yes boys and girls still have separated classes in 2018 in
Indonesia, and maybe I focus a little bit too much on that!)

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

71

</td>
<td style="text-align:left;">

Aldila2018

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.72 Bhattacharya2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

236

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

El artículo no desarrolla propiamente una investigación sino que
presenta una propuesta de currículo que puede ser implementada en
colegios, basándose en modelos computacionales.

</td>
</tr>
<tr>
<td style="text-align:left;">

392

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Juan Gabriel said that this paper was just a curriculum proposal,
however there is a very small part called “Assesment” which would be
telling the opposite. This part is so small that showing it to the group
and seeing whether it is sufficient to consider the paper having the
outcome part should not take too much time

</td>
</tr>
<tr>
<td style="text-align:left;">

494

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

72

</td>
<td style="text-align:left;">

Bhattacharya2020

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.73 Gomes2015

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

219

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Outcome is more about the learning environment rather than climate.

</td>
</tr>
<tr>
<td style="text-align:left;">

395

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

So, that is a harsh one, the authors mostly survey the way student felt
with this way of learning (Blended-learning: a sort of mix between
internet and with a mentor punctually). There is a survey at the
beginning concerning cognition of the students but only before the
pedagogical intervention. Where it becomes very difficult to choose is
that the authors conclude that the methods are efficient for CCE, but I
do not feel that their method support their claims…

</td>
</tr>
<tr>
<td style="text-align:left;">

491

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

73

</td>
<td style="text-align:left;">

Gomes2015

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.74 Day2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

162

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

364

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

It is not about the changes of the students concerning CC, but more
about the feelings of the students concerning the type of education (a
more horizontal between student organization of classes). I don’t think
we can work on that, it is however interesting to note the possibility
of teaching CC differently!

</td>
</tr>
<tr>
<td style="text-align:left;">

420

</td>
<td style="text-align:right;">

37

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

They only surveyd students one time since the main focus was not CC but
the cooperative learning. However, they questionnaire included two Self
report questions about attitudes and awareness, and they report gender
differences which makes for a between group comparison.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

74

</td>
<td style="text-align:left;">

Day2013

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.75 Liu2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

26

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

It is highly qualitative though, with example of discourse to support
author claims… I am not sure yet how to extract that

</td>
</tr>
<tr>
<td style="text-align:left;">

108

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

There is intervention, on teachers but there is no outcome. This study
focuses on understanding epistemologies but althought the intervention
lasts 3 years, there is no account of change due to the intervention.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

75

</td>
<td style="text-align:left;">

Liu2019

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.76 Muller2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

19

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+O

</td>
<td style="text-align:left;">

I think it would be impossible to extract specific outcome for children
participant. Moreover the paper is deeply theoretical and present as
outcomes discussion and words from the participant which I find
difficult to use

</td>
</tr>
<tr>
<td style="text-align:left;">

106

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

FROM cognition TO Behavior raise awareness of local environmental
threats and encourage learners and their families willingness to behave
in a more environmentally friendly way Report of findings is VERY
qualitative.

</td>
</tr>
<tr>
<td style="text-align:left;">

411

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

not sure about extractable outcomes as its mixed between students and
community

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

76

</td>
<td style="text-align:left;">

Muller2021

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.77 Pimentel2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

241

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

291

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

The outcomes concern (I) how well the student received the intervention,
(ii) whether there is a positive identification sentiment toward
scientist, (iii) whether the view of science is improved by the
intervention. We are typically in one of these papers where CCE is a
pretext, not the objective. From what we said in the meeting of the 2nd
of August, I understand that we reject the papers in these cases.

</td>
</tr>
<tr>
<td style="text-align:left;">

418

</td>
<td style="text-align:right;">

37

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

It entails a virtual reality intervention on climate change but the
authors are interested in another outcome, more related to the
experience with VR and how it affects attitudes toward STEM ciencias.
Not climate change

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

77

</td>
<td style="text-align:left;">

Pimentel2021

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Identication sentiment toward scientist, not really CC

</td>
</tr>
</tbody>
</table>

## 3.78 Yoon2016

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

283

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

363

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

The “validity” of the intervention is measured, but not really its
effect on the students

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

78

</td>
<td style="text-align:left;">

Yoon2016

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.79 Crouze2023

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

18

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I really liked this paper and believe that including it could broad the
focus of our SR. However I am conscious that the same arguments as for
Sutela2023 could apply. This is highly theoretical, and qualitative
research, so including it would make the extraction process much more
complicated.

</td>
</tr>
<tr>
<td style="text-align:left;">

119

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

319

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

Highly debatable that what is taken to be the intervention
(i.e. participating in climate protests) is an independently assigned
intervention.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

79

</td>
<td style="text-align:left;">

Crouze2023

</td>
<td style="text-align:left;">

Ana,Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.80 Cebesoy2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

127

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

296

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

That is a difficult one: most of the results concern the judgement of
the participant on the activity, however there is one result which might
justify keeping the paper: the participants seem to say that the
activity “raised their awareness of the CC topic, and the role of forest
in relation to CC…

</td>
</tr>
<tr>
<td style="text-align:left;">

422

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Is exclusively focused on pre-service teacher’s and could be too
centered on pedagogical aspects but information reported by the
participants does deal with how their beliefs and knowledge about CC
changed and whether they can change other people’s opinions about it so
it is relevant to our study.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

80

</td>
<td style="text-align:left;">

Cebesoy2019

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.81 Levrini2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

23

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

While CC is present as a background, it seems that the focus is the
attitude toward future of the student, not specifically for CC… A second
opinion is welcome though

</td>
</tr>
<tr>
<td style="text-align:left;">

48

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:left;">

Sara

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

414

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I’m still unsure about exactable outcomes, its one of those about the
future

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

81

</td>
<td style="text-align:left;">

Levrini2019

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.82 Levrini2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

68

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

The goal of the paper is to analyze the ability of the children to
comprehend the future, while CC is the theme of the intervention, it is
not really the point of the paper. Since CC is not central in the
objective of the researchers I would tend to reject it, but I am not
certain…

</td>
</tr>
<tr>
<td style="text-align:left;">

421

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Similar to above, data deals with futuro scafolding but content does
deal directly with CC and changes in knowledge and attitudes about it so
it is relevant.

</td>
</tr>
<tr>
<td style="text-align:left;">

522

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

secondary schools, two universities, an environmental NGO,

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

82

</td>
<td style="text-align:left;">

Levrini2021

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.83 Allen2014

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

378

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Outcome does not deal with CC rather with field trips in general.

</td>
</tr>
<tr>
<td style="text-align:left;">

391

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I agree that the focus of the study is mostly to see how “docents”
(museum guides) change their professional practice, in the context of
school trips concerning CC. I feel we need to discuss that in group to
really know if it can be including in our criteria

</td>
</tr>
<tr>
<td style="text-align:left;">

486

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

83

</td>
<td style="text-align:left;">

Allen2014

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Change in professional practise do not correspond to the outcomes we
agreed to study

</td>
</tr>
</tbody>
</table>

## 3.84 Meya2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

130

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

THESIS

</td>
</tr>
<tr>
<td style="text-align:left;">

181

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

424

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

Intervention could be construed a non-educational in nature (i.e. it’s a
video game) even though it could conceivably be applied to educational
settings. We could keep it to add to the discussion as serious games are
a growing trend and could be used to modify various behaviours.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

84

</td>
<td style="text-align:left;">

Meya2018

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.85 Monroe2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

247

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

359

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

I believe the outcomes concerning the evaluation of the change in
knowledge after the dissemination of the material created is not
sufficient… There are some small sentences, but I don’t think that is
sufficient in terms of outcomes

</td>
</tr>
<tr>
<td style="text-align:left;">

423

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

Article deals with creating a curriculum and piloting it rather than
actually implementing it in situ. It could be heavily discussed that it
does not actually implement an intervention rather than simply designing
it. However, collected data does deal with CC understanding by pupils as
perceived by teachers but i get the sense it’s mostly dealing with
whether the curriculum itself is implementeable or not rather than
whether it changes people’s beliefs/ knowledge about CC. I’m saying no
but it could definitely go to yes.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

85

</td>
<td style="text-align:left;">

Monroe2019

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.86 Dormody2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

245

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

science comprehension OR knowledfe

</td>
</tr>
<tr>
<td style="text-align:left;">

295

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

The authors present the paper as focusing on “science” skill, so not
directly CC. However, when we read carefully the themes of the “science”
they are all related to climate change, or almost all. Therefore I think
we should keep it, but there might be a debate on it, since the authors
themselves are clearly not insisting on the CC aspect of the “science”.

</td>
</tr>
<tr>
<td style="text-align:left;">

444

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

86

</td>
<td style="text-align:left;">

Dormody2020

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.87 Hestness2017

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

276

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

297

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

This is another difficult one: the authors measure qualitatively how the
concept of “learning progression” (an educative conceptual framework)
may help the teachers to teach better on the topic of CC. So really the
intervention is about a professional method in education, and the
outcomes as well, but since all the topics are applied to CCE, we might
consider it can enter, I am not sure though where it would land, in
terms of cognition attitude behavior…

</td>
</tr>
<tr>
<td style="text-align:left;">

419

</td>
<td style="text-align:right;">

37

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

There is no evaluation of the impact of the intervention. They are
interested in how teachers understand learning progress during the
intervention but in fact, the data comes from the middle of the
intervention.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

87

</td>
<td style="text-align:left;">

Hestness2017

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.88 Oliveira2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

168

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

outcomes

</td>
</tr>
<tr>
<td style="text-align:left;">

194

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Portuguese… Sara, help me!!!!

</td>
</tr>
<tr>
<td style="text-align:left;">

397

</td>
<td style="text-align:right;">

34

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

This is a documentary study

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

88

</td>
<td style="text-align:left;">

Oliveira2021

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.89 Plutzer2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

129

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

NO INTERVENTION

</td>
</tr>
<tr>
<td style="text-align:left;">

403

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

I tend to agree with Ana by saying that there is no intervention
described in this document, it is very interesting and keeping the
document for the introduction or discussion may be interesting for a
sentence like “teacher may be biased by ideology in their pedagogical
methodology choices” might be possible, but clearly I do not see any way
to keep the paper and extract any information on the efficiency of a
pedagogical intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

550

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:left;">

Benjamin

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

89

</td>
<td style="text-align:left;">

Plutzer2018

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.90 Prosser_Bravo2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

388

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

No intervention rather simply focus groups.

</td>
</tr>
<tr>
<td style="text-align:left;">

404

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

There is a very large population here, not all of them can easily be
linked directly to children. However, since there is a large discussion
on the ideas concerning CCE, one might argue that effectively, the
participant become somewhat the entourage of the children, but it is
somewhat far fetch… However concerning the intervention, I tend to
disagree with Sergio and consider that the focus group are the
pedagogical intervention. I would be much more comfortable with an
additional opinion here

</td>
</tr>
<tr>
<td style="text-align:left;">

427

</td>
<td style="text-align:right;">

39

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

541

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

90

</td>
<td style="text-align:left;">

Prosser_Bravo2022

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.91 Raes2016

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

92

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Uncomplete text, only the first page is available.

</td>
</tr>
<tr>
<td style="text-align:left;">

405

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

For me it is a “includable” one, but I am conscious there are 2 small
problems here. First, I am not sure that the objective can be described
as purely CC, since the methodology could be applied for any other
science topic, and it is not clear whether the authors were really
focused on the Climate ¡, but the topic of the intervention is clearly
related to CC so I think it can go in. The second problem is that, while
the first research question enters in our criteria, it is only a part of
the outcomes here, and the other part concerns the pedagogical
methodology. However if we can filter the interesting question, we are
good!

</td>
</tr>
<tr>
<td style="text-align:left;">

426

</td>
<td style="text-align:right;">

39

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

This is a pre-post test with comparison group (low vs. high structure)
test of an intervention consisting on tecnnology inhanced tool AND
Teacher accompniment according to two protocols). The DV is cognitive
(knowledge integration) there is also a measure of affect but there is
no pre. Only post.

</td>
</tr>
<tr>
<td style="text-align:left;">

552

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:left;">

Benjamin

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

91

</td>
<td style="text-align:left;">

Raes2016

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.92 Schuster2008

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

230

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Intervention

</td>
<td style="text-align:left;">

No hay intervention.

</td>
</tr>
<tr>
<td style="text-align:left;">

317

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

463

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

92

</td>
<td style="text-align:left;">

Schuster2008

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.93 Sternang2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

254

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

unsure about the outcomes

</td>
</tr>
<tr>
<td style="text-align:left;">

307

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

It may be a fail in terms of environmental awareness, but I love the
paper, it may be a good opportunities to reflect on different topics,
however I have a doubt in terms of CC… Climate change may be a part of
it, but all the discourse focus on “environment” in a more general way,
but at the same time it may be a cultural difference. I have doubts and
would like to get a second opinion to make sure!

</td>
</tr>
<tr>
<td style="text-align:left;">

425

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Intervention is a bit mconfusing between roleplaying judges on a
possible car factory and listening to a debate between other students
roleplaying different people surrrounding that decision (NGO officials,
government officials, future factory owners and workers…). Intervention
feels a bit convoluted but is educational in nature and population as
well as outcome is relevant to our purposes I think.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

93

</td>
<td style="text-align:left;">

Sternang2012

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.94 Bush2019a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

358

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

College students from Quebec

</td>
</tr>
<tr>
<td style="text-align:left;">

415

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

mixing results from HS students and college students

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

94

</td>
<td style="text-align:left;">

Bush2019a

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Population

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.95 de_Sousa2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

246

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

systems thinking concept map for teaching and learning to help teachers
understand the interconnectedness of soil and climate change.

</td>
</tr>
<tr>
<td style="text-align:left;">

350

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

The intervention purpose is not centered climate change but on the
intervention method

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

95

</td>
<td style="text-align:left;">

de_Sousa2019

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.96 Musselman2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

97

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Artículo de prensa abierta, no científico.

</td>
</tr>
<tr>
<td style="text-align:left;">

492

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

96

</td>
<td style="text-align:left;">

Musselman2020

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Press article, not scientific

</td>
</tr>
</tbody>
</table>

## 3.97 Cohen2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

40

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

PhD Thesis

</td>
</tr>
<tr>
<td style="text-align:left;">

45

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:left;">

JuanGabriel

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Disertación doctoral. No sé qué marcar en la razón de exclusión.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

97

</td>
<td style="text-align:left;">

Cohen2013

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Thesis

</td>
</tr>
</tbody>
</table>

## 3.98 Walsh2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

262

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

THESIS

</td>
</tr>
<tr>
<td style="text-align:left;">

352

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Dissertation

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

98

</td>
<td style="text-align:left;">

Walsh2012

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Thesis

</td>
</tr>
</tbody>
</table>

## 3.99 Wallace2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

87

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Thesis

</td>
</tr>
<tr>
<td style="text-align:left;">

469

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

THESIS

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

99

</td>
<td style="text-align:left;">

Wallace2018

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

StudyType

</td>
<td style="text-align:left;">

Thesis

</td>
</tr>
</tbody>
</table>

## 3.100 da_Silva2022a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

258

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

369

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Help! (portuguese)

</td>
</tr>
<tr>
<td style="text-align:left;">

396

</td>
<td style="text-align:right;">

34

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

This Isa survey

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

100

</td>
<td style="text-align:left;">

da_Silva2022a

</td>
<td style="text-align:left;">

Marius,Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.101 Oberauer2023

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

265

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

348

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

Lots of theory but almost no reference to intervention

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

101

</td>
<td style="text-align:left;">

Oberauer2023

</td>
<td style="text-align:left;">

Marius,Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Check quality for description of intervention

</td>
</tr>
</tbody>
</table>

## 3.102 Ouariachi2017a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

376

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

I+O

</td>
<td style="text-align:left;">

It would appear difficult to consider there is an actual intervention
here, moreover the outcomes are only the analysis of what could learn
the users, not what the users have actually learnt.

</td>
</tr>
<tr>
<td style="text-align:left;">

417

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

los juegos online sobre este tema se perfilan como herramientas
alternativas para fomentar la concienciación entre los jóvenes.

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

102

</td>
<td style="text-align:left;">

Ouariachi2017a

</td>
<td style="text-align:left;">

Marius,Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

P+I+O

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.103 Sezen_Barrie2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

73

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

There are various aspects there. We need to choose whether we extract
cognition effect on students, emotion effects on student, or effects on
the educational practices of teachers, or even emotions of the teachers,
or which combination of them… This might make the extraction process
difficult for this one, however I can’t see why excluding it.

</td>
</tr>
<tr>
<td style="text-align:left;">

413

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

its about the emotions, unsure how this will be extracted .. how
students’ wondering questions help teachers notice essential features of
climate change learning such as spatiotemporal thinking.

</td>
</tr>
<tr>
<td style="text-align:left;">

549

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:left;">

Benjamin

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

103

</td>
<td style="text-align:left;">

Sezen_Barrie2020

</td>
<td style="text-align:left;">

Marius,Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.104 Walsh2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

362

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Yes, it will be hell to analyse and extract… Despite the clear special
way of mixing political identities and cognition effect changes in 3
“type” student, I believe this document met the criteria to be included…

</td>
</tr>
<tr>
<td style="text-align:left;">

416

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

small sample size, kinda complicated, it seems like the intervention
worked but the outcomes are hard to extract, i could include it if the
other reviwer includesd it

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

104

</td>
<td style="text-align:left;">

Walsh2018

</td>
<td style="text-align:left;">

Marius,Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

## 3.105 Bopardikar2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

115

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

452

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

105

</td>
<td style="text-align:left;">

Bopardikar2021

</td>
<td style="text-align:left;">

Marius,Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Ana found that there were no outcome during extraction

</td>
</tr>
</tbody>
</table>

## 3.106 Turner2022

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

104

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:left;">

Luisa

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

Quali and quanti (pre-post surveys) on teachers and pupils. The survey
asks about subjective perception of knowing and enjoying learning about
CC. This maps on emotions and possibly self efficacy\*

</td>
</tr>
<tr>
<td style="text-align:left;">

499

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

106

</td>
<td style="text-align:left;">

Turner2022

</td>
<td style="text-align:left;">

Marius,Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Excluded during extraction (motivation toward intervention, not outcome)

</td>
</tr>
</tbody>
</table>

## 3.107 Trott2020

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

205

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:left;">

Sergio

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
<tr>
<td style="text-align:left;">

455

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

107

</td>
<td style="text-align:left;">

Trott2020

</td>
<td style="text-align:left;">

Marius,Ana

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Excluded during extraction (2 cases studies on the use of photo
activities, but no outcome in cognition, attitude, behavior)

</td>
</tr>
</tbody>
</table>

## 3.108 Ross2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

67

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

The paper is rooted in a new and particular analysis framework (based on
the work of Bourdieux) it might be difficult to compare the results with
other papers

</td>
</tr>
<tr>
<td style="text-align:left;">

449

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

108

</td>
<td style="text-align:left;">

Ross2021

</td>
<td style="text-align:left;">

Marius,Luisa

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Outcome

</td>
<td style="text-align:left;">

Excluded during extraction: the problem is that the outcomes are
explained by sociological factors (Bourdieu’s framework), not by the
intervention

</td>
</tr>
</tbody>
</table>

## 3.109 Leckey2021a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

assignment

</th>
<th style="text-align:left;">

person

</th>
<th style="text-align:left;">

incl

</th>
<th style="text-align:left;">

reasonExcl

</th>
<th style="text-align:left;">

comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

84

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

no doubt for me here

</td>
</tr>
<tr>
<td style="text-align:left;">

489

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:left;">

Ana

</td>
<td style="text-align:left;">

TRUE

</td>
<td style="text-align:left;">

NA

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

**Decision**:

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

abbrev

</th>
<th style="text-align:left;">

People

</th>
<th style="text-align:left;">

Inclusion

</th>
<th style="text-align:left;">

ReasonExlusion

</th>
<th style="text-align:left;">

Comment

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

109

</td>
<td style="text-align:left;">

Leckey2021a

</td>
<td style="text-align:left;">

Marius

</td>
<td style="text-align:left;">

FALSE

</td>
<td style="text-align:left;">

Duplicate

</td>
<td style="text-align:left;">

NA

</td>
</tr>
</tbody>
</table>

# 4 Final Numbers

``` r
(AcceptedFinal <- c(names(accepted)[!is.na(as.logical(accepted))&as.logical(accepted)],
                   finalDecisionTab$abbrev[!is.na(finalDecisionTab$Inclusion)&as.logical(finalDecisionTab$Inclusion)]))
```

    ##   [1] "Akaygun2021"           "Aksel_Stenberdt2023"   "Aksut2016"            
    ##   [4] "Arya2016"              "Baker2013"             "Bentz2020"            
    ##   [7] "Bhattacharya2021"      "Blaum2017"             "Bodzin2014"           
    ##  [10] "Bofferding2015"        "Boon2016"              "Bopardikar2021"       
    ##  [13] "Bozdogan2011"          "Breslyn2019"           "Cebesoy2022"          
    ##  [16] "Chang2018"             "Chattuchai2015"        "Chin2016"             
    ##  [19] "Choi2021"              "Cibik2022"             "da_Rocha2020"         
    ##  [22] "Dal2015a"              "DeWaters2014"          "Dormody2021"          
    ##  [25] "Drewes2018"            "Eggert2017"            "Faria2015"            
    ##  [28] "Feldpausch_Parker2013" "Flora2014"             "Gladwin2022"          
    ##  [31] "Gold2015a"             "Gutierrez2022"         "Harker_Schuch2013"    
    ##  [34] "Harker_Schuch2020"     "Herrick2022"           "Holthuis2014"         
    ##  [37] "Hu2016"                "Jones2021"             "Kabir2015"            
    ##  [40] "Karpudewan2015"        "Karpudewan2015a"       "Karpudewan2017"       
    ##  [43] "Keller2019"            "Kern2017"              "Khadka2021"           
    ##  [46] "Kinsey2012"            "Klosterman2010"        "Kolenaty2022"         
    ##  [49] "Korfgen2017"           "Korsager2015"          "Kubisch2022"          
    ##  [52] "Kumar2023"             "Lambert2013"           "Lawson2019a"          
    ##  [55] "Leckey2021"            "Leckey2021a"           "Leitao2022"           
    ##  [58] "Lester2006"            "Li2022"                "Littrell2022"         
    ##  [61] "Liu2015"               "Lombardi2013"          "Lozano2022"           
    ##  [64] "Mason1998"             "McNeill2012"           "Monroe2016"           
    ##  [67] "Muller2021a"           "Nafisah2022"           "Nakamura2019"         
    ##  [70] "Nicholas_Figueroa2017" "Nussbaum2015"          "Parant2017"           
    ##  [73] "Park2020"              "Parth2020"             "Pekel2019"            
    ##  [76] "Petersen2020"          "Porter2012"            "Pruneau2003"          
    ##  [79] "Pruneau2006"           "Puttick2018"           "Reinfried2012"        
    ##  [82] "Roscoe2013"            "Ross2021"              "Roychoudhury2017"     
    ##  [85] "Ruboon2012"            "Salas_Rueda2021"       "Salsabila2019"        
    ##  [88] "Schrot2021a"           "Schubatzky2022"        "Sellmann2013"         
    ##  [91] "Sellmann2013a"         "Sellmann2015"          "Shea2016"             
    ##  [94] "Silva2021"             "Skains2022"            "Smith2019"            
    ##  [97] "Steffensen2022"        "Stevenson2018"         "Stevenson2018a"       
    ## [100] "Sukardi2022"           "Sumrall2021"           "Sundberg2013"         
    ## [103] "Svihla2012"            "Taber2009"             "Tasquier2015"         
    ## [106] "Tasquier2017"          "Tasti2021"             "Taylor2020"           
    ## [109] "Trott2019"             "Trott2020"             "Trott2020a"           
    ## [112] "Trott2020b"            "Trott2022"             "Turner2022"           
    ## [115] "Varma2012"             "Veijalainen2013"       "Vicente2020"          
    ## [118] "Visintainer2015"       "Walsh2019"             "Wang2022"             
    ## [121] "White2022"             "Williams2017"          "Markowitz2018"        
    ## [124] "Jacobson2017"          "Deisenrieder2020"      "Feierabend2012"       
    ## [127] "Goulah2017"            "McNeal2014a"           "Miller2015"           
    ## [130] "Ratinen2013"           "Jin2013"               "Lambert2012"          
    ## [133] "McGowan2022"           "Nkoana2020"            "Pruneau2006a"         
    ## [136] "Saribaş2016"           "Siegner2018"           "Sutela2023"           
    ## [139] "Xie2014"               "Zhong2021"             "Zografakis2008"       
    ## [142] "Muller2021"            "Cebesoy2019"           "Levrini2021"          
    ## [145] "Meya2018"              "Dormody2020"           "Raes2016"             
    ## [148] "Schuster2008"          "Sternang2012"          "Oberauer2023"         
    ## [151] "Walsh2018"

``` r
AcceptedFinal<-AcceptedFinal[!AcceptedFinal %in% finalDecisionTab$abbrev[!finalDecisionTab$Inclusion]]

length(AcceptedFinal)
```

    ## [1] 146

``` r
RejectedFinal<-
  rbind(
    data.frame(id=names(reasonOK),reason=unlist(reasonOK)),
    data.frame(
      id=finalDecisionTab$abbrev[!is.na(finalDecisionTab$Inclusion)&!as.logical(finalDecisionTab$Inclusion)],
      reason=finalDecisionTab$ReasonExlusion[!is.na(finalDecisionTab$Inclusion)&!as.logical(finalDecisionTab$Inclusion)]
    ))
```

## 4.1 rejection reason table

``` r
kable(RejectedFinal,row.names = F)
```

<table>
<thead>
<tr>
<th style="text-align:left;">

id

</th>
<th style="text-align:left;">

reason

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

Aydogan2022

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Bright2020

</td>
<td style="text-align:left;">

Intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

Catanzaro2023

</td>
<td style="text-align:left;">

I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Cordero2008

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Gkotzos2017

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Hepper2021

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Jeong2014

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Kretser2020

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Kumar2018

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Landon2019

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Manalo2016

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Meixner2023

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Pfirman2021

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Rooney2021

</td>
<td style="text-align:left;">

I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Sandhaus2018

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Sandoval_Rivera2021

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Swim2017

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Tallapragada2021

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Varela_Losada2019

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Wu2021

</td>
<td style="text-align:left;">

Intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

Yarker2013

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Rebich2005

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Robelia2011

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Otieno2014

</td>
<td style="text-align:left;">

P+I

</td>
</tr>
<tr>
<td style="text-align:left;">

Clark2020

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Sezen_Barrie2021

</td>
<td style="text-align:left;">

Intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

Stevenson2016a

</td>
<td style="text-align:left;">

Intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

Rooney_Varga2018

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Andrews1993

</td>
<td style="text-align:left;">

MissingPdf

</td>
</tr>
<tr>
<td style="text-align:left;">

Koseoglu2011

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Maddox2011

</td>
<td style="text-align:left;">

I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Öhman2013

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Ozen2018

</td>
<td style="text-align:left;">

Intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

Picketts2012

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Prosser_Bravo2020

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Vize2012

</td>
<td style="text-align:left;">

Intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

Yoon2016a

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Chong2015

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Eichinger2022

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Ellins2014

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Gold2015

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Hosman2020

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Ng2019

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

da_Silva2022

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Goelsh2020

</td>
<td style="text-align:left;">

P+I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Gutierrez2016

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Swim2013

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Kathiresan2021

</td>
<td style="text-align:left;">

P+I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Le2019

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Logan2015

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Anonymous2021

</td>
<td style="text-align:left;">

I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Bello_Benavides2019

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Burkholder2017

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Carey2017

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Chordnork2012

</td>
<td style="text-align:left;">

I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Ferguson2022

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Hugel2022

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Kreibich2011

</td>
<td style="text-align:left;">

P+I

</td>
</tr>
<tr>
<td style="text-align:left;">

Lombardi2012

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

McNeal2014

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Oe2022

</td>
<td style="text-align:left;">

P+I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Plutzer2021

</td>
<td style="text-align:left;">

Intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

Todd2016

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

Chankrajang2017

</td>
<td style="text-align:left;">

P+I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Goeschl2020

</td>
<td style="text-align:left;">

P+I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Kullar2011

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Makrakis2012

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Makrakis2012a

</td>
<td style="text-align:left;">

I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Nauck2020

</td>
<td style="text-align:left;">

I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Tomlinson2018

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

van_Zee2022

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Aldila2018

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Bhattacharya2020

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Gomes2015

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Day2013

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Liu2019

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Pimentel2021

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Yoon2016

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Crouze2023

</td>
<td style="text-align:left;">

P+I

</td>
</tr>
<tr>
<td style="text-align:left;">

Levrini2019

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Allen2014

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Monroe2019

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Hestness2017

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Oliveira2021

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Plutzer2018

</td>
<td style="text-align:left;">

Intervention

</td>
</tr>
<tr>
<td style="text-align:left;">

Prosser_Bravo2022

</td>
<td style="text-align:left;">

P+I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Bush2019a

</td>
<td style="text-align:left;">

Population

</td>
</tr>
<tr>
<td style="text-align:left;">

de_Sousa2019

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Musselman2020

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Cohen2013

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Walsh2012

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

Wallace2018

</td>
<td style="text-align:left;">

StudyType

</td>
</tr>
<tr>
<td style="text-align:left;">

da_Silva2022a

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Ouariachi2017a

</td>
<td style="text-align:left;">

P+I+O

</td>
</tr>
<tr>
<td style="text-align:left;">

Sezen_Barrie2020

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Bopardikar2021

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Turner2022

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Trott2020

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Ross2021

</td>
<td style="text-align:left;">

Outcome

</td>
</tr>
<tr>
<td style="text-align:left;">

Leckey2021a

</td>
<td style="text-align:left;">

Duplicate

</td>
</tr>
</tbody>
</table>

## 4.2 rejection reason numbers

``` r
table(RejectedFinal$reason)
```

    ## 
    ##    Duplicate          I+O Intervention   MissingPdf      Outcome          P+I 
    ##            1            7            8            1           42            3 
    ##        P+I+O   Population    StudyType 
    ##            7           21           10

``` r
save(AcceptedFinal,file="../../screening/fullTextScreening/acceptedFinal.RData")
```

``` r
rawExtract<-read.xlsx("../../extraction/20231022.xlsx",sheet = "extraction ",startRow = 2)
AcceptedFinal[!AcceptedFinal%in%rawExtract$id]
```

    ## character(0)

``` r
rawExtract$id[!rawExtract$id%in%AcceptedFinal]
```

    ## character(0)

``` r
length(unique(rawExtract$id))
```

    ## [1] 146

``` r
length(AcceptedFinal)
```

    ## [1] 146

## 4.3 Missing decisions

``` r
load("../../screening/fullTextScreening/FTS.RData")
docsTot<-unlist(FTS$description$documents)
(missin <- docsTot[!docsTot%in%AcceptedFinal & !docsTot%in%RejectedFinal$id])
```

    ## named character(0)

Which assignments the missing decisions correspond to:

``` r
if(length(missin)>0){
tabAssignMiss<-sapply(missin,function(x,l)
{
  sapply(l,function(y,x)x%in%y$documents,x=x)
},l=FTS$assignments
  )
colnames(tabAssignMiss)<-missin
apply(tabAssignMiss,2,which)
}
```
