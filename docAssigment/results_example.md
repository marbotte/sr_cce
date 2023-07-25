Reading the results of the assignments and extracting the interesting
data (example of a full-text screening exercise)
================
Marius Bottin
2023-07-25

- [1 Conflicts](#1-conflicts)
  - [1.1 Inclusion](#11-inclusion)
    - [1.1.1 Andrews1993](#111-andrews1993)
    - [1.1.2 Bello_Benavides2019](#112-bello_benavides2019)
    - [1.1.3 Ellins2014](#113-ellins2014)
    - [1.1.4 Feierabend2012](#114-feierabend2012)
    - [1.1.5 Koseoglu2011](#115-koseoglu2011)
    - [1.1.6 Levrini2021](#116-levrini2021)
    - [1.1.7 Maddox2011](#117-maddox2011)
    - [1.1.8 Markowitz2018](#118-markowitz2018)
    - [1.1.9 Öhman2013](#119-öhman2013)
    - [1.1.10 Pruneau2006a](#1110-pruneau2006a)
    - [1.1.11 Rooney_Varga2018](#1111-rooney_varga2018)
    - [1.1.12 Saribaş2016](#1112-saribaş2016)
    - [1.1.13 Stevenson2016a](#1113-stevenson2016a)
    - [1.1.14 Vize2012](#1114-vize2012)
    - [1.1.15 Yoon2016a](#1115-yoon2016a)
  - [1.2 Reason of exclusion](#12-reason-of-exclusion)
    - [1.2.1 Otieno2014](#121-otieno2014)
    - [1.2.2 Rebich2005](#122-rebich2005)
    - [1.2.3 Yarker2013](#123-yarker2013)

In order to read the results of the assignments, we put all the
resulting excel files in a unique directory:

``` r
require(openxlsx)
```

    ## Loading required package: openxlsx

``` r
dirResults <- "../../screening/fullTextScreening/DONE/"
patternFiles <- "^assignment([0-9]{1,4})_([A-Za-z]+)_([0-9]+)\\.xlsx$"
sheetName <- "Sheet 1"
idDoc <- "abbrev"
(filesResults<-dir(dirResults,pattern=patternFiles))
```

    ##  [1] "assignment10_Marius_20230710.xlsx"     
    ##  [2] "assignment11_JuanGabriel_20230711.xlsx"
    ##  [3] "assignment13_JuanGabriel_20230714.xlsx"
    ##  [4] "assignment14_Marius_20230714.xlsx"     
    ##  [5] "assignment3_Ana_20230705.xlsx"         
    ##  [6] "assignment4_Marius_20230705.xlsx"      
    ##  [7] "assignment5_Ana_20230706.xlsx"         
    ##  [8] "assignment6_Ana_20230706.xlsx"         
    ##  [9] "assignment7_Ana_20230706.xlsx"         
    ## [10] "assignment8_Ana_20230706.xlsx"

``` r
assignment<-gsub(patternFiles,"\\1",filesResults)
person<-gsub(patternFiles,"\\2",filesResults)
dateAssign<-gsub(patternFiles,"\\3",filesResults)
listResults<-lapply(paste(dirResults,filesResults,sep="/"),read.xlsx,sheet=sheetName)
nameCol<-lapply(listResults,colnames)
unNameCol<-unique(unlist(nameCol))
docAnalysed<-data.frame(
  assignment=rep(assignment,sapply(listResults,nrow)),
  person=rep(person,sapply(listResults,nrow)),
  id=unlist(lapply(listResults,function(x,a)x[,a],a=idDoc)),
  inclusion=unlist(lapply(listResults,function(x,a)x[,a],a="Inclusion")),
  reasonExcl=unlist(lapply(listResults,function(x,a)x[,a],a="ReasonExlusion")),
  comment=unlist(lapply(listResults,function(x,a)x[,a],a="Comment"))
  
)

table(docAnalysed$inclusion)
```

    ## 
    ##       0       1   FALSE    TRUE UNCLEAR 
    ##      19      31      37      97       1

``` r
docAnalysed$incl<-NA
docAnalysed$incl[docAnalysed$inclusion%in%c("1","TRUE")]<-T
docAnalysed$incl[docAnalysed$inclusion%in%c("0","FALSE")]<-F
table(docAnalysed$incl,useNA="ifany")
```

    ## 
    ## FALSE  TRUE  <NA> 
    ##    56   128     6

Which are the documents which were reviewed more than once:

``` r
nbRev<-table(docAnalysed$id)
(moreThanOnce <- names(nbRev)[nbRev>1])
```

    ##  [1] "Andrews1993"         "Aydogan2022"         "Baker2013"          
    ##  [4] "Bello_Benavides2019" "Chattuchai2015"      "Clark2020"          
    ##  [7] "Cohen2013"           "Dal2015a"            "DeWaters2014"       
    ## [10] "Drewes2018"          "Eggert2017"          "Ellins2014"         
    ## [13] "Feierabend2012"      "Flora2014"           "Gold2015a"          
    ## [16] "Holthuis2014"        "Keller2019"          "Klosterman2010"     
    ## [19] "Koseoglu2011"        "Lawson2019a"         "Leckey2021a"        
    ## [22] "Leitao2022"          "Lester2006"          "Levrini2021"        
    ## [25] "Lombardi2013"        "Maddox2011"          "Markowitz2018"      
    ## [28] "McNeal2014a"         "Ng2019"              "Öhman2013"          
    ## [31] "Otieno2014"          "Park2020"            "Parth2020"          
    ## [34] "Pruneau2006a"        "Rebich2005"          "Rooney_Varga2018"   
    ## [37] "Ross2021"            "Salas_Rueda2021"     "Saribaş2016"        
    ## [40] "Schrot2021a"         "Sellmann2015"        "Stevenson2016a"     
    ## [43] "Vize2012"            "Wallace2018"         "Walsh2019"          
    ## [46] "Yarker2013"          "Yoon2016a"

``` r
conflictOnInclusion <- by(docAnalysed[docAnalysed$id%in%moreThanOnce,],docAnalysed$id[docAnalysed$id%in%moreThanOnce],function(tab)
  {
    any(is.na(tab$incl))|length(unique(tab$incl))>1
  },simplify = T)
(w_conflict_incl <- names(conflictOnInclusion)[conflictOnInclusion])
```

    ##  [1] "Andrews1993"         "Bello_Benavides2019" "Ellins2014"         
    ##  [4] "Feierabend2012"      "Koseoglu2011"        "Levrini2021"        
    ##  [7] "Maddox2011"          "Markowitz2018"       "Öhman2013"          
    ## [10] "Pruneau2006a"        "Rooney_Varga2018"    "Saribaş2016"        
    ## [13] "Stevenson2016a"      "Vize2012"            "Yoon2016a"

``` r
toTest_conflictReason<-moreThanOnce[!moreThanOnce%in%w_conflict_incl]
conflictOnReason <- by(docAnalysed[docAnalysed$id%in%toTest_conflictReason,],docAnalysed$id[docAnalysed$id%in%toTest_conflictReason],function(tab)
  {
    length(unique(tab$reasonExcl))>1
  },simplify=T)
(w_conflict_reason<-names(conflictOnReason)[conflictOnReason])
```

    ## [1] "Otieno2014" "Rebich2005" "Yarker2013"

# 1 Conflicts

## 1.1 Inclusion

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

### 1.1.1 Andrews1993

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

75

</td>
<td style="text-align:left;">

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

90

</td>
<td style="text-align:left;">

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

### 1.1.2 Bello_Benavides2019

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

58

</td>
<td style="text-align:left;">

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

188

</td>
<td style="text-align:left;">

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

### 1.1.3 Ellins2014

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

71

</td>
<td style="text-align:left;">

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

86

</td>
<td style="text-align:left;">

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

### 1.1.4 Feierabend2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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
<td style="text-align:left;">

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

108

</td>
<td style="text-align:left;">

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

### 1.1.5 Koseoglu2011

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

55

</td>
<td style="text-align:left;">

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

133

</td>
<td style="text-align:left;">

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

### 1.1.6 Levrini2021

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

41

</td>
<td style="text-align:left;">

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

168

</td>
<td style="text-align:left;">

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

### 1.1.7 Maddox2011

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

66

</td>
<td style="text-align:left;">

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

81

</td>
<td style="text-align:left;">

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

### 1.1.8 Markowitz2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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
<td style="text-align:left;">

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

84

</td>
<td style="text-align:left;">

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

### 1.1.9 Öhman2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

61

</td>
<td style="text-align:left;">

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

76

</td>
<td style="text-align:left;">

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

### 1.1.10 Pruneau2006a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

72

</td>
<td style="text-align:left;">

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

87

</td>
<td style="text-align:left;">

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

### 1.1.11 Rooney_Varga2018

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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
<td style="text-align:left;">

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

85

</td>
<td style="text-align:left;">

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

### 1.1.12 Saribaş2016

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

28

</td>
<td style="text-align:left;">

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

175

</td>
<td style="text-align:left;">

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

### 1.1.13 Stevenson2016a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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
<td style="text-align:left;">

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

79

</td>
<td style="text-align:left;">

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

### 1.1.14 Vize2012

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

74

</td>
<td style="text-align:left;">

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

89

</td>
<td style="text-align:left;">

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

### 1.1.15 Yoon2016a

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

49

</td>
<td style="text-align:left;">

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

177

</td>
<td style="text-align:left;">

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

## 1.2 Reason of exclusion

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

### 1.2.1 Otieno2014

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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

36

</td>
<td style="text-align:left;">

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

142

</td>
<td style="text-align:left;">

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

### 1.2.2 Rebich2005

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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
<td style="text-align:left;">

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

110

</td>
<td style="text-align:left;">

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

### 1.2.3 Yarker2013

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">

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
<td style="text-align:left;">

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

88

</td>
<td style="text-align:left;">

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
