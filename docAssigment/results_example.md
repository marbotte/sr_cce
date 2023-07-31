Reading the results of the assignments and extracting the interesting
data (example of a full-text screening exercise)
================
Marius Bottin
2023-07-31

- [1 Numbers](#1-numbers)
- [2 Conflicts](#2-conflicts)
  - [2.1 Inclusion](#21-inclusion)
    - [2.1.1 Bello_Benavides2019](#211-bello_benavides2019)
    - [2.1.2 Burkholder2017](#212-burkholder2017)
    - [2.1.3 Chordnork2012](#213-chordnork2012)
    - [2.1.4 Crouze2023](#214-crouze2023)
    - [2.1.5 Ferguson2022](#215-ferguson2022)
    - [2.1.6 Gomes2015](#216-gomes2015)
    - [2.1.7 Levrini2021](#217-levrini2021)
    - [2.1.8 Meya2018](#218-meya2018)
    - [2.1.9 Oliveira2021](#219-oliveira2021)
    - [2.1.10 Pruneau2006a](#2110-pruneau2006a)
    - [2.1.11 Saribaş2016](#2111-saribaş2016)
    - [2.1.12 Schuster2008](#2112-schuster2008)
    - [2.1.13 Siegner2018](#2113-siegner2018)
    - [2.1.14 Sutela2023](#2114-sutela2023)
    - [2.1.15 Zhong2021](#2115-zhong2021)
  - [2.2 Reason of exclusion](#22-reason-of-exclusion)
    - [2.2.1 Goeschl2020](#221-goeschl2020)
- [3 Resolved conflicts](#3-resolved-conflicts)
  - [3.1 Yarker2013](#31-yarker2013)
  - [3.2 Rebich2005](#32-rebich2005)
  - [3.3 Robelia2011](#33-robelia2011)
  - [3.4 Otieno2014](#34-otieno2014)
  - [3.5 Clark2020](#35-clark2020)
  - [3.6 Sezen_Barrie2021](#36-sezen_barrie2021)
  - [3.7 Tomlinsen2018](#37-tomlinsen2018)
  - [3.8 Stevenson2016a](#38-stevenson2016a)
  - [3.9 Rooney_Varga2018](#39-rooney_varga2018)
  - [3.10 Andrews1993](#310-andrews1993)
  - [3.11 Koseoglu2011](#311-koseoglu2011)
  - [3.12 Maddox2011](#312-maddox2011)
  - [3.13 Markowitz2018](#313-markowitz2018)
  - [3.14 Öhman2013](#314-öhman2013)
  - [3.15 Ozen2018](#315-ozen2018)
  - [3.16 Picketts2012](#316-picketts2012)
  - [3.17 Prosser_Bravo2020](#317-prosser_bravo2020)
  - [3.18 Vize2012](#318-vize2012)
  - [3.19 Yoon2016a](#319-yoon2016a)
  - [3.20 Jacobson2017](#320-jacobson2017)
  - [3.21 Chong2015](#321-chong2015)
  - [3.22 Deisenrieder2020](#322-deisenrieder2020)
  - [3.23 Eichinger2022](#323-eichinger2022)
  - [3.24 Ellins2014](#324-ellins2014)
  - [3.25 Feierabend2012](#325-feierabend2012)
  - [3.26 Gold2015](#326-gold2015)
  - [3.27 Goulah2017](#327-goulah2017)
  - [3.28 Hosman2020](#328-hosman2020)
  - [3.29 McNeal2014a](#329-mcneal2014a)
  - [3.30 Miller2015](#330-miller2015)
  - [3.31 Ng2019](#331-ng2019)
  - [3.32 Ratinen2013](#332-ratinen2013)
  - [3.33 da_Silva2022](#333-da_silva2022)
  - [3.34 Goelsh2020](#334-goelsh2020)
  - [3.35 Gutierrez2016](#335-gutierrez2016)
  - [3.36 Swim2013](#336-swim2013)
  - [3.37 Kathiresan2021](#337-kathiresan2021)
  - [3.38 Le2019](#338-le2019)
  - [3.39 Logan2015](#339-logan2015)
- [4 Final Numbers](#4-final-numbers)

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
    ##  [4] "assignment13_JuanGabriel_20230714.xlsx"
    ##  [5] "assignment14_Marius_20230714.xlsx"     
    ##  [6] "assignment15_Sergio_20230718.xlsx"     
    ##  [7] "assignment16_JuanGabriel_20230718.xlsx"
    ##  [8] "assignment18_Sergio_20230719.xlsx"     
    ##  [9] "assignment19_Ana_20230724.xlsx"        
    ## [10] "assignment2_Sergio_20230705.xlsx"      
    ## [11] "assignment20_Ana_20230724.xlsx"        
    ## [12] "assignment21_Marius_20230725.xlsx"     
    ## [13] "assignment22_Sergio_20230726.xlsx"     
    ## [14] "assignment23_Sergio_20230727.xlsx"     
    ## [15] "assignment3_Ana_20230705.xlsx"         
    ## [16] "assignment4_Marius_20230705.xlsx"      
    ## [17] "assignment5_Ana_20230706.xlsx"         
    ## [18] "assignment6_Ana_20230706.xlsx"         
    ## [19] "assignment7_Ana_20230706.xlsx"         
    ## [20] "assignment8_Ana_20230706.xlsx"

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
    ##      27      44      75     175       3       2

``` r
docAnalysed$incl<-NA
docAnalysed$incl[docAnalysed$inclusion%in%c("1","TRUE")]<-T
docAnalysed$incl[docAnalysed$inclusion%in%c("0","FALSE")]<-F
table(docAnalysed$incl,useNA="ifany")
```

    ## 
    ## FALSE  TRUE  <NA> 
    ##   102   219    19

Which are the documents which were reviewed more than once:

``` r
nbRev<-table(docAnalysed$id)
(moreThanOnce <- names(nbRev)[nbRev>1])
```

    ##   [1] "Aksel_Stenberdt2023"   "Andrews1993"           "Arya2016"             
    ##   [4] "Aydogan2022"           "Baker2013"             "Bello_Benavides2019"  
    ##   [7] "Bentz2020"             "Bhattacharya2021"      "Boon2016"             
    ##  [10] "Bopardikar2021"        "Breslyn2019"           "Burkholder2017"       
    ##  [13] "Cebesoy2022"           "Chang2018"             "Chattuchai2015"       
    ##  [16] "Choi2021"              "Chong2015"             "Chordnork2012"        
    ##  [19] "Clark2020"             "Cohen2013"             "Crouze2023"           
    ##  [22] "da_Rocha2020"          "da_Silva2022"          "Dal2015a"             
    ##  [25] "Deisenrieder2020"      "DeWaters2014"          "Drewes2018"           
    ##  [28] "Eggert2017"            "Eichinger2022"         "Ellins2014"           
    ##  [31] "Feierabend2012"        "Ferguson2022"          "Flora2014"            
    ##  [34] "Gladwin2022"           "Goeschl2020"           "Gold2015"             
    ##  [37] "Gold2015a"             "Gomes2015"             "Goulah2017"           
    ##  [40] "Gutierrez2016"         "Gutierrez2022"         "Harker_Schuch2013"    
    ##  [43] "Holthuis2014"          "Hosman2020"            "Jacobson2017"         
    ##  [46] "Jones2021"             "Karpudewan2015"        "Karpudewan2017"       
    ##  [49] "Kathiresan2021"        "Keller2019"            "Kern2017"             
    ##  [52] "Khadka2021"            "Klosterman2010"        "Kolenaty2022"         
    ##  [55] "Koseoglu2011"          "Kretser2020"           "Kubisch2022"          
    ##  [58] "Lambert2013"           "Landon2019"            "Lawson2019a"          
    ##  [61] "Le2019"                "Leckey2021a"           "Leitao2022"           
    ##  [64] "Lester2006"            "Levrini2021"           "Logan2015"            
    ##  [67] "Lombardi2013"          "Lozano2022"            "Maddox2011"           
    ##  [70] "Markowitz2018"         "Mason1998"             "McNeal2014a"          
    ##  [73] "Meixner2023"           "Meya2018"              "Miller2015"           
    ##  [76] "Muller2021a"           "Musselman2020"         "Nafisah2022"          
    ##  [79] "Nakamura2019"          "Ng2019"                "Nicholas_Figueroa2017"
    ##  [82] "Nussbaum2015"          "Öhman2013"             "Oliveira2021"         
    ##  [85] "Otieno2014"            "Ozen2018"              "Parant2017"           
    ##  [88] "Park2020"              "Parth2020"             "Petersen2020"         
    ##  [91] "Pfirman2021"           "Picketts2012"          "Prosser_Bravo2020"    
    ##  [94] "Pruneau2003"           "Pruneau2006a"          "Puttick2018"          
    ##  [97] "Ratinen2013"           "Rebich2005"            "Reinfried2012"        
    ## [100] "Rooney_Varga2018"      "Roscoe2013"            "Ross2021"             
    ## [103] "Salas_Rueda2021"       "Sandoval_Rivera2021"   "Saribaş2016"          
    ## [106] "Schrot2021a"           "Schuster2008"          "Sellmann2013"         
    ## [109] "Sellmann2013a"         "Sellmann2015"          "Sezen_Barrie2021"     
    ## [112] "Siegner2018"           "Silva2021"             "Stevenson2016a"       
    ## [115] "Stevenson2018a"        "Sumrall2021"           "Sundberg2013"         
    ## [118] "Sutela2023"            "Swim2013"              "Taber2009"            
    ## [121] "Tasti2021"             "Taylor2020"            "Trott2019"            
    ## [124] "Trott2020"             "Trott2022"             "Varma2012"            
    ## [127] "Veijalainen2013"       "Vize2012"              "Wallace2018"          
    ## [130] "Walsh2019"             "Williams2017"          "Yarker2013"           
    ## [133] "Yoon2016a"             "Zhong2021"

``` r
mTO_noFinalD <- moreThanOnce[!moreThanOnce%in%finalDecisionTab$abbrev]
conflictOnInclusion <- by(docAnalysed[docAnalysed$id%in%mTO_noFinalD,],docAnalysed$id[docAnalysed$id%in%mTO_noFinalD],function(tab)
  {
    any(is.na(tab$incl))|length(unique(tab$incl))>1
  },simplify = T)
(w_conflict_incl <- names(conflictOnInclusion)[conflictOnInclusion])
```

    ##  [1] "Bello_Benavides2019" "Burkholder2017"      "Chordnork2012"      
    ##  [4] "Crouze2023"          "Ferguson2022"        "Gomes2015"          
    ##  [7] "Levrini2021"         "Meya2018"            "Oliveira2021"       
    ## [10] "Pruneau2006a"        "Saribaş2016"         "Schuster2008"       
    ## [13] "Siegner2018"         "Sutela2023"          "Zhong2021"

``` r
toTest_conflictReason<-mTO_noFinalD[!mTO_noFinalD%in%w_conflict_incl]
conflictOnReason <- by(docAnalysed[docAnalysed$id%in%toTest_conflictReason,],docAnalysed$id[docAnalysed$id%in%toTest_conflictReason],function(tab)
  {
    length(unique(tab$reasonExcl))>1
  },simplify=T)
(w_conflict_reason<-names(conflictOnReason)[conflictOnReason])
```

    ## [1] "Goeschl2020"

# 1 Numbers

Number of article reviewed by more than one person:

``` r
length(moreThanOnce)
```

    ## [1] 134

Number of papers accepted without conflict:

``` r
accepted <- by(docAnalysed[docAnalysed$id%in%moreThanOnce,],docAnalysed$id[docAnalysed$id%in%moreThanOnce],function(tab)
  {
    all(tab$incl)
  },simplify = T)
sum(na.omit(as.logical(accepted)))
```

    ## [1] 73

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
    ## $Kretser2020
    ## [1] "Outcome"
    ## 
    ## $Landon2019
    ## [1] "Population"
    ## 
    ## $Meixner2023
    ## [1] "Population"
    ## 
    ## $Pfirman2021
    ## [1] "Population"
    ## 
    ## $Sandoval_Rivera2021
    ## [1] "Outcome"

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

### 2.1.1 Bello_Benavides2019

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

338

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

### 2.1.2 Burkholder2017

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

135

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

195

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
</tbody>
</table>

### 2.1.3 Chordnork2012

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

NA

</td>
</tr>
</tbody>
</table>

### 2.1.4 Crouze2023

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

97

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
</tbody>
</table>

### 2.1.5 Ferguson2022

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

77

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

317

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

### 2.1.6 Gomes2015

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

287

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

### 2.1.7 Levrini2021

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

318

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

### 2.1.8 Meya2018

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

108

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

159

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
</tbody>
</table>

### 2.1.9 Oliveira2021

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

146

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

172

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
</tbody>
</table>

### 2.1.10 Pruneau2006a

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

124

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

222

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

237

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

### 2.1.11 Saribaş2016

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

325

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

### 2.1.12 Schuster2008

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

208

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

259

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

### 2.1.13 Siegner2018

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

209

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
</tbody>
</table>

### 2.1.14 Sutela2023

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

96

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
</tbody>
</table>

### 2.1.15 Zhong2021

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

131

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

210

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
</tbody>
</table>

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

### 2.2.1 Goeschl2020

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

103

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

158

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

125

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

223

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

238

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

50

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

260

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

332

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

51

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

292

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

217

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

232

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

87

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

302

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

## 3.7 Tomlinsen2018

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

7

</td>
<td style="text-align:left;">

Tomlinsen2018

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

## 3.8 Stevenson2016a

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

122

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

214

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

229

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

8

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

## 3.9 Rooney_Varga2018

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

220

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

235

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

9

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

## 3.10 Andrews1993

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

225

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

240

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

10

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

## 3.11 Koseoglu2011

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

70

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

283

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

11

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

## 3.12 Maddox2011

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

216

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

231

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

12

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

## 3.13 Markowitz2018

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

219

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

234

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

13

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

## 3.14 Öhman2013

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

211

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

226

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

14

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

## 3.15 Ozen2018

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

110

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

15

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

## 3.16 Picketts2012

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

90

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

311

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

16

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

## 3.17 Prosser_Bravo2020

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

104

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

17

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

## 3.18 Vize2012

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

224

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

239

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

18

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

## 3.19 Yoon2016a

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

64

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

327

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

19

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

## 3.20 Jacobson2017

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

161

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

20

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

## 3.21 Chong2015

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

114

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

163

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

21

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

## 3.22 Deisenrieder2020

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

132

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

157

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

22

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

## 3.23 Eichinger2022

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

188

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

335

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

23

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

## 3.24 Ellins2014

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

221

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

236

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

24

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

## 3.25 Feierabend2012

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

69

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

258

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

25

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

## 3.26 Gold2015

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

256

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

26

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

## 3.27 Goulah2017

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

113

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

27

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

## 3.28 Hosman2020

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

156

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

250

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

28

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

## 3.29 McNeal2014a

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

213

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

228

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

29

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

## 3.30 Miller2015

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

116

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

166

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

30

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

## 3.31 Ng2019

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

123

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

218

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

233

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

31

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

## 3.32 Ratinen2013

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

139

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

207

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

32

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

## 3.33 da_Silva2022

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

180

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

268

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

33

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

## 3.34 Goelsh2020

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

34

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

## 3.35 Gutierrez2016

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

174

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

263

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

35

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

## 3.36 Swim2013

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

175

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

315

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

36

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

## 3.37 Kathiresan2021

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

143

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

169

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

37

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

## 3.38 Le2019

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

173

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

339

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

38

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

## 3.39 Logan2015

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

164

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

39

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

# 4 Final Numbers

``` r
(AcceptedFinal <- c(names(accepted)[!is.na(as.logical(accepted))&as.logical(accepted)],
                   finalDecisionTab$abbrev[!is.na(finalDecisionTab$Inclusion)&as.logical(finalDecisionTab$Inclusion)]))
```

    ##  [1] "Aksel_Stenberdt2023"   "Arya2016"              "Baker2013"            
    ##  [4] "Bentz2020"             "Bhattacharya2021"      "Boon2016"             
    ##  [7] "Bopardikar2021"        "Breslyn2019"           "Cebesoy2022"          
    ## [10] "Chang2018"             "Chattuchai2015"        "Choi2021"             
    ## [13] "da_Rocha2020"          "Dal2015a"              "DeWaters2014"         
    ## [16] "Drewes2018"            "Eggert2017"            "Flora2014"            
    ## [19] "Gladwin2022"           "Gold2015a"             "Gutierrez2022"        
    ## [22] "Harker_Schuch2013"     "Holthuis2014"          "Jones2021"            
    ## [25] "Karpudewan2015"        "Karpudewan2017"        "Keller2019"           
    ## [28] "Kern2017"              "Khadka2021"            "Klosterman2010"       
    ## [31] "Kolenaty2022"          "Kubisch2022"           "Lambert2013"          
    ## [34] "Lawson2019a"           "Leckey2021a"           "Leitao2022"           
    ## [37] "Lester2006"            "Lombardi2013"          "Lozano2022"           
    ## [40] "Mason1998"             "Muller2021a"           "Nafisah2022"          
    ## [43] "Nakamura2019"          "Nicholas_Figueroa2017" "Nussbaum2015"         
    ## [46] "Parant2017"            "Park2020"              "Parth2020"            
    ## [49] "Petersen2020"          "Pruneau2003"           "Puttick2018"          
    ## [52] "Reinfried2012"         "Roscoe2013"            "Ross2021"             
    ## [55] "Salas_Rueda2021"       "Schrot2021a"           "Sellmann2013"         
    ## [58] "Sellmann2013a"         "Sellmann2015"          "Silva2021"            
    ## [61] "Stevenson2018a"        "Sumrall2021"           "Sundberg2013"         
    ## [64] "Taber2009"             "Tasti2021"             "Taylor2020"           
    ## [67] "Trott2019"             "Trott2020"             "Trott2022"            
    ## [70] "Varma2012"             "Veijalainen2013"       "Walsh2019"            
    ## [73] "Williams2017"          "Markowitz2018"         "Jacobson2017"         
    ## [76] "Deisenrieder2020"      "Feierabend2012"        "Goulah2017"           
    ## [79] "McNeal2014a"           "Miller2015"            "Ratinen2013"

``` r
length(AcceptedFinal)
```

    ## [1] 81

``` r
RejectedFinal<-
  rbind(
    data.frame(id=names(reasonOK),reason=unlist(reasonOK)),
    data.frame(
      id=finalDecisionTab$abbrev[!is.na(finalDecisionTab$Inclusion)&!as.logical(finalDecisionTab$Inclusion)],
      reason=finalDecisionTab$ReasonExlusion[!is.na(finalDecisionTab$Inclusion)&!as.logical(finalDecisionTab$Inclusion)]
    ))
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

Kretser2020

</td>
<td style="text-align:left;">

Outcome

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

Sandoval_Rivera2021

</td>
<td style="text-align:left;">

Outcome

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

Tomlinsen2018

</td>
<td style="text-align:left;">

Population

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
</tbody>
</table>

``` r
table(RejectedFinal$reason)
```

    ## 
    ##          I+O Intervention   MissingPdf      Outcome          P+I        P+I+O 
    ##            1            4            1           13            1            2 
    ##   Population    StudyType 
    ##           10            5
