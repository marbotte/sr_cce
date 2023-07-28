Reading the results of the assignments and extracting the interesting
data (example of a full-text screening exercise)
================
Marius Bottin
2023-07-27

- [1 Numbers](#1-numbers)
- [2 Conflicts](#2-conflicts)
  - [2.1 Inclusion](#21-inclusion)
    - [2.1.1 Bello_Benavides2019](#211-bello_benavides2019)
    - [2.1.2 Burkholder2017](#212-burkholder2017)
    - [2.1.3 Chordnork2012](#213-chordnork2012)
    - [2.1.4 Crouze2023](#214-crouze2023)
    - [2.1.5 Eichinger2022](#215-eichinger2022)
    - [2.1.6 Ellins2014](#216-ellins2014)
    - [2.1.7 Feierabend2012](#217-feierabend2012)
    - [2.1.8 Ferguson2022](#218-ferguson2022)
    - [2.1.9 Gomes2015](#219-gomes2015)
    - [2.1.10 Goulah2017](#2110-goulah2017)
    - [2.1.11 Levrini2021](#2111-levrini2021)
    - [2.1.12 McNeal2014a](#2112-mcneal2014a)
    - [2.1.13 Ng2019](#2113-ng2019)
    - [2.1.14 Pruneau2006a](#2114-pruneau2006a)
    - [2.1.15 Ratinen2013](#2115-ratinen2013)
    - [2.1.16 Saribaş2016](#2116-saribaş2016)
    - [2.1.17 Schuster2008](#2117-schuster2008)
    - [2.1.18 Siegner2018](#2118-siegner2018)
    - [2.1.19 Sutela2023](#2119-sutela2023)
    - [2.1.20 Zhong2021](#2120-zhong2021)
  - [2.2 Reason of exclusion](#22-reason-of-exclusion)
    - [2.2.1 da_Silva2022](#221-da_silva2022)
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
    ## [12] "assignment22_Sergio_20230726.xlsx"     
    ## [13] "assignment23_Sergio_20230727.xlsx"     
    ## [14] "assignment3_Ana_20230705.xlsx"         
    ## [15] "assignment4_Marius_20230705.xlsx"      
    ## [16] "assignment5_Ana_20230706.xlsx"         
    ## [17] "assignment6_Ana_20230706.xlsx"         
    ## [18] "assignment7_Ana_20230706.xlsx"         
    ## [19] "assignment8_Ana_20230706.xlsx"

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
    ##      19      31      73     175       3       2

``` r
docAnalysed$incl<-NA
docAnalysed$incl[docAnalysed$inclusion%in%c("1","TRUE")]<-T
docAnalysed$incl[docAnalysed$inclusion%in%c("0","FALSE")]<-F
table(docAnalysed$incl,useNA="ifany")
```

    ## 
    ## FALSE  TRUE  <NA> 
    ##    92   206    17

Which are the documents which were reviewed more than once:

``` r
nbRev<-table(docAnalysed$id)
(moreThanOnce <- names(nbRev)[nbRev>1])
```

    ##   [1] "Aksel_Stenberdt2023"   "Andrews1993"           "Arya2016"             
    ##   [4] "Aydogan2022"           "Baker2013"             "Bello_Benavides2019"  
    ##   [7] "Bentz2020"             "Bhattacharya2021"      "Boon2016"             
    ##  [10] "Bopardikar2021"        "Breslyn2019"           "Burkholder2017"       
    ##  [13] "Chang2018"             "Chattuchai2015"        "Choi2021"             
    ##  [16] "Chordnork2012"         "Clark2020"             "Cohen2013"            
    ##  [19] "Crouze2023"            "da_Rocha2020"          "da_Silva2022"         
    ##  [22] "Dal2015a"              "DeWaters2014"          "Drewes2018"           
    ##  [25] "Eggert2017"            "Eichinger2022"         "Ellins2014"           
    ##  [28] "Feierabend2012"        "Ferguson2022"          "Flora2014"            
    ##  [31] "Gladwin2022"           "Gold2015a"             "Gomes2015"            
    ##  [34] "Goulah2017"            "Harker_Schuch2013"     "Holthuis2014"         
    ##  [37] "Keller2019"            "Kern2017"              "Khadka2021"           
    ##  [40] "Klosterman2010"        "Kolenaty2022"          "Koseoglu2011"         
    ##  [43] "Kretser2020"           "Kubisch2022"           "Lambert2013"          
    ##  [46] "Landon2019"            "Lawson2019a"           "Leckey2021a"          
    ##  [49] "Leitao2022"            "Lester2006"            "Levrini2021"          
    ##  [52] "Lombardi2013"          "Lozano2022"            "Maddox2011"           
    ##  [55] "Markowitz2018"         "Mason1998"             "McNeal2014a"          
    ##  [58] "Meixner2023"           "Muller2021a"           "Musselman2020"        
    ##  [61] "Nakamura2019"          "Ng2019"                "Nicholas_Figueroa2017"
    ##  [64] "Nussbaum2015"          "Öhman2013"             "Otieno2014"           
    ##  [67] "Ozen2018"              "Park2020"              "Parth2020"            
    ##  [70] "Petersen2020"          "Pfirman2021"           "Picketts2012"         
    ##  [73] "Prosser_Bravo2020"     "Pruneau2003"           "Pruneau2006a"         
    ##  [76] "Puttick2018"           "Ratinen2013"           "Rebich2005"           
    ##  [79] "Reinfried2012"         "Rooney_Varga2018"      "Roscoe2013"           
    ##  [82] "Ross2021"              "Salas_Rueda2021"       "Saribaş2016"          
    ##  [85] "Schrot2021a"           "Schuster2008"          "Sellmann2013a"        
    ##  [88] "Sellmann2015"          "Sezen_Barrie2021"      "Siegner2018"          
    ##  [91] "Silva2021"             "Stevenson2016a"        "Sumrall2021"          
    ##  [94] "Sundberg2013"          "Sutela2023"            "Taber2009"            
    ##  [97] "Tasti2021"             "Taylor2020"            "Trott2019"            
    ## [100] "Trott2020"             "Trott2022"             "Varma2012"            
    ## [103] "Veijalainen2013"       "Vize2012"              "Wallace2018"          
    ## [106] "Walsh2019"             "Yarker2013"            "Yoon2016a"            
    ## [109] "Zhong2021"

``` r
mTO_noFinalD <- moreThanOnce[!moreThanOnce%in%finalDecisionTab$abbrev]
conflictOnInclusion <- by(docAnalysed[docAnalysed$id%in%mTO_noFinalD,],docAnalysed$id[docAnalysed$id%in%mTO_noFinalD],function(tab)
  {
    any(is.na(tab$incl))|length(unique(tab$incl))>1
  },simplify = T)
(w_conflict_incl <- names(conflictOnInclusion)[conflictOnInclusion])
```

    ##  [1] "Bello_Benavides2019" "Burkholder2017"      "Chordnork2012"      
    ##  [4] "Crouze2023"          "Eichinger2022"       "Ellins2014"         
    ##  [7] "Feierabend2012"      "Ferguson2022"        "Gomes2015"          
    ## [10] "Goulah2017"          "Levrini2021"         "McNeal2014a"        
    ## [13] "Ng2019"              "Pruneau2006a"        "Ratinen2013"        
    ## [16] "Saribaş2016"         "Schuster2008"        "Siegner2018"        
    ## [19] "Sutela2023"          "Zhong2021"

``` r
toTest_conflictReason<-mTO_noFinalD[!mTO_noFinalD%in%w_conflict_incl]
conflictOnReason <- by(docAnalysed[docAnalysed$id%in%toTest_conflictReason,],docAnalysed$id[docAnalysed$id%in%toTest_conflictReason],function(tab)
  {
    length(unique(tab$reasonExcl))>1
  },simplify=T)
(w_conflict_reason<-names(conflictOnReason)[conflictOnReason])
```

    ## [1] "da_Silva2022"

# 1 Numbers

Number of article reviewed by more than one person:

``` r
length(moreThanOnce)
```

    ## [1] 109

Number of papers accepted without conflict:

``` r
accepted <- by(docAnalysed[docAnalysed$id%in%moreThanOnce,],docAnalysed$id[docAnalysed$id%in%moreThanOnce],function(tab)
  {
    all(tab$incl)
  },simplify = T)
sum(na.omit(as.logical(accepted)))
```

    ## [1] 63

Reason of exclusions when excluded without conflicts:

``` r
exclusionReason <- by(docAnalysed[docAnalysed$id%in%moreThanOnce,],docAnalysed$id[docAnalysed$id%in%moreThanOnce],function(tab)
  {
    if(!any(is.na(tab$incl))&all(!tab$incl))
    {return(unique(tab$reasonExcl))}else
    {return(NA)}
  
  },simplify = T)
#exclusionReason
exclusionReason[sapply(exclusionReason,function(x)length(x)==1&!any(is.na(x)))]
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

313

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

170

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

### 2.1.5 Eichinger2022

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

163

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

310

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

### 2.1.6 Ellins2014

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

196

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

211

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

### 2.1.7 Feierabend2012

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

233

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

### 2.1.8 Ferguson2022

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

292

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

### 2.1.9 Gomes2015

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

262

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

### 2.1.10 Goulah2017

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

### 2.1.11 Levrini2021

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

293

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

### 2.1.12 McNeal2014a

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

188

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

203

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

### 2.1.13 Ng2019

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

193

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

208

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

### 2.1.14 Pruneau2006a

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

197

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

212

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

### 2.1.15 Ratinen2013

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

182

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

### 2.1.16 Saribaş2016

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

300

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

### 2.1.17 Schuster2008

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

183

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

234

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

### 2.1.18 Siegner2018

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

184

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

### 2.1.19 Sutela2023

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

### 2.1.20 Zhong2021

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

185

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

### 2.2.1 da_Silva2022

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

243

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

198

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

213

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

235

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

307

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

267

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

192

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

207

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

277

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

189

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

204

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

195

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

210

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

200

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

215

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

258

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

191

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

206

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

194

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

209

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

186

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

201

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

286

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

199

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

214

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

302

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
