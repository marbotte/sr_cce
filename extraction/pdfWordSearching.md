Searching words in the pdfs
================
Marius Bottin
2023-10-09

- [1 Number of pages](#1-number-of-pages)
- [2 Self-efficacy](#2-self-efficacy)
- [3 Theory of planned behavior](#3-theory-of-planned-behavior)
- [4 Controversy](#4-controversy)
  - [4.1 Controvers](#41-controvers)
  - [4.2 Belief](#42-belief)
  - [4.3 Opinion](#43-opinion)
  - [4.4 Republican](#44-republican)
  - [4.5 Human-induced](#45-human-induced)
  - [4.6 All controversy table](#46-all-controversy-table)
- [5 Earthquakes](#5-earthquakes)
- [6 Misconception](#6-misconception)
- [7 Outcomes](#7-outcomes)
  - [7.1 recapitulative table:
    outcomes](#71-recapitulative-table-outcomes)

``` r
require(knitr)&require(kableExtra)
```

    ## Loading required package: knitr

    ## Loading required package: kableExtra

    ## [1] TRUE

``` r
knitr::opts_chunk$set(cache=T)
dos <- normalizePath("../../extraction/")
```

# 1 Number of pages

``` r
setwd(dos)
raw <- system(paste("find",'-type d','-exec exiftool -T -filename -PageCount -s3 -ext pdf {} \\;'),intern = T)
sum(as.numeric(sapply(strsplit(raw,"\t"),function(x)x[2])))
```

    ## [1] 2723

# 2 Self-efficacy

“Self-efficacy” or “self efficacy”:

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "self[ -]efficacy" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Sara/Muller2021a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Petersen2020.pdf

</td>
<td style="text-align:left;">

25

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Schubatzky2022.pdf

</td>
<td style="text-align:left;">

48

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Boon2016.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/DeWaters2014.pdf

</td>
<td style="text-align:left;">

21

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Aksel_Stenberdt2023.pdf

</td>
<td style="text-align:left;">

41

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kolenaty2022.pdf

</td>
<td style="text-align:left;">

60

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Muller2021.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Stevenson2018.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Nussbaum2015.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Oberauer2023.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Saribaş2016.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Trott2019.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Flora2014.pdf

</td>
<td style="text-align:left;">

14

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Wang2022.pdf

</td>
<td style="text-align:left;">

11

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Gutierrez2022.pdf

</td>
<td style="text-align:left;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Deisenrieder2020.pdf

</td>
<td style="text-align:left;">

25

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Ross2021.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
</tbody>
</table>

# 3 Theory of planned behavior

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "planned[ -]behaviou?r" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep1<-sep
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Ana/Williams2017.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kolenaty2022.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Hu2016.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
</tbody>
</table>

# 4 Controversy

## 4.1 Controvers

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "controvers" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep1<-sep
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Sara/Blaum2017.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/McNeill2012.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Smith2019.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Lambert2013.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Monroe2016.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Schubatzky2022.pdf

</td>
<td style="text-align:left;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lester2006.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Steffensen2022.pdf

</td>
<td style="text-align:left;">

60

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Porter2012.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lombardi2013.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Khadka2021.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/McGowan2022.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Lawson2019a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Tasquier2017.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Gold2015a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Walsh2019.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Klosterman2010.pdf

</td>
<td style="text-align:left;">

35

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Feldpausch_Parker2013.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Eggert2017.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Walsh2018.pdf

</td>
<td style="text-align:left;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Gutierrez2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Breslyn2019.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Drewes2018.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
</tbody>
</table>

## 4.2 Belief

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "belief" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep2<-sep
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Sara/Muller2021a.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Harker_Schuch2013.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Harker_Schuch2020.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Blaum2017.pdf

</td>
<td style="text-align:left;">

15

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/McNeill2012.pdf

</td>
<td style="text-align:left;">

20

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Smith2019.pdf

</td>
<td style="text-align:left;">

20

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Lambert2013.pdf

</td>
<td style="text-align:left;">

40

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Bodzin2014.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Petersen2020.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Taber2009.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Monroe2016.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Schubatzky2022.pdf

</td>
<td style="text-align:left;">

18

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lester2006.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Holthuis2014.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Steffensen2022.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lombardi2013.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Arya2016.pdf

</td>
<td style="text-align:left;">

13

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Boon2016.pdf

</td>
<td style="text-align:left;">

15

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Aksut2016.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Shea2016.pdf

</td>
<td style="text-align:left;">

22

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/DeWaters2014.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Parant2017.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Aksel_Stenberdt2023.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Liu2015.pdf

</td>
<td style="text-align:left;">

37

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Bofferding2015.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Roychoudhury2017.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Chang2018.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Bentz2020.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Williams2017.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Mason1998.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Siegner2018.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/McGowan2022.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Sternang2012.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Meya2018.pdf

</td>
<td style="text-align:left;">

54

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Xie2014.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Cebesoy2019.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kolenaty2022.pdf

</td>
<td style="text-align:left;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kumar2023.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Muller2021.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Stevenson2018.pdf

</td>
<td style="text-align:left;">

13

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Lawson2019a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Oberauer2023.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Tasquier2017.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Gold2015a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Trott2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Saribaş2016.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Trott2019.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Flora2014.pdf

</td>
<td style="text-align:left;">

13

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Nkoana2020.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/da_Rocha2020.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Sundberg2013.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Ratinen2013.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Trott2020b.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Sumrall2021.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Wang2022.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Pruneau2003.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Tasti2021.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Trott2020a.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Jones2021.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Walsh2018.pdf

</td>
<td style="text-align:left;">

24

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Gutierrez2022.pdf

</td>
<td style="text-align:left;">

19

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Goulah2017.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Tasquier2015.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Hu2016.pdf

</td>
<td style="text-align:left;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Stevenson2018a.pdf

</td>
<td style="text-align:left;">

19

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Deisenrieder2020.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Ross2021.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/White2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Parth2020.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Drewes2018.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
</tbody>
</table>

## 4.3 Opinion

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "opinion" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep3<-sep
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Sara/Harker_Schuch2013.pdf

</td>
<td style="text-align:left;">

115

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Harker_Schuch2020.pdf

</td>
<td style="text-align:left;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Lozano2022.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Blaum2017.pdf

</td>
<td style="text-align:left;">

11

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Lambert2013.pdf

</td>
<td style="text-align:left;">

11

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Sellmann2013.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Gladwin2022.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Baker2013.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Monroe2016.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lester2006.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lambert2012.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Holthuis2014.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Bhattacharya2021.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Feierabend2012.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Steffensen2022.pdf

</td>
<td style="text-align:left;">

13

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Porter2012.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Arya2016.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Shea2016.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/DeWaters2014.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Choi2021.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Salas_Rueda2021.pdf

</td>
<td style="text-align:left;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Liu2015.pdf

</td>
<td style="text-align:left;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Levrini2021.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Svihla2012.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Mason1998.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Reinfried2012.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Siegner2018.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Sternang2012.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Meya2018.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Cebesoy2019.pdf

</td>
<td style="text-align:left;">

11

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kumar2023.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/McNeal2014a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Sukardi2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Lawson2019a.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Jin2013.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Pruneau2006a.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Tasquier2017.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Karpudewan2015a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Klosterman2010.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/da_Rocha2020.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Sundberg2013.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Ratinen2013.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Pruneau2006.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Pruneau2003.pdf

</td>
<td style="text-align:left;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Cebesoy2022.pdf

</td>
<td style="text-align:left;">

15

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Jones2021.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Walsh2018.pdf

</td>
<td style="text-align:left;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Sellmann2015.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Chin2016.pdf

</td>
<td style="text-align:left;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Tasquier2015.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Stevenson2018a.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/White2022.pdf

</td>
<td style="text-align:left;">

25

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Vicente2020.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Parth2020.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
</tbody>
</table>

## 4.4 Republican

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "republican" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep4<-sep
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Sara/Lambert2013.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Monroe2016.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Walsh2018.pdf

</td>
<td style="text-align:left;">

27

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Stevenson2018a.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/White2022.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
</tbody>
</table>

## 4.5 Human-induced

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "human-induced" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep5 <- sep
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Sara/Bodzin2014.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lambert2012.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lombardi2013.pdf

</td>
<td style="text-align:left;">

41

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Korfgen2017.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Liu2015.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Visintainer2015.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Tasquier2017.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Ratinen2013.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
</tbody>
</table>

## 4.6 All controversy table

``` r
all(sapply(sep1,function(x)x[1])==sapply(sep2,function(x)x[1]))
```

    ## [1] TRUE

``` r
all(sapply(sep1,function(x)x[1])==sapply(sep3,function(x)x[1]))
```

    ## [1] TRUE

``` r
all(sapply(sep1,function(x)x[1])==sapply(sep4,function(x)x[1]))
```

    ## [1] TRUE

``` r
all(sapply(sep1,function(x)x[1])==sapply(sep5,function(x)x[1]))
```

    ## [1] TRUE

``` r
allControv<-data.frame(
  controvers=as.integer(sapply(sep1,function(x)x[2])),
  belief=as.integer(sapply(sep2,function(x)x[2])),
  opinion=as.integer(sapply(sep3,function(x)x[2])),
  republican=as.integer(sapply(sep4,function(x)x[2])),
  humanInduced=as.integer(sapply(sep5,function(x)x[2]))
)
rownames(allControv)<-sapply(sep1,function(x)x[1])
#allControv<-allControv[rowSums(allControv)>1,]
 allControv$SUM<-rowSums(allControv)
# allControv[1:5]<-lapply(allControv[1:5], function(x) {
#     cell_spec(x, bold = T, 
#               color = spec_color(x, end = 0.9),
#               font_size = spec_font_size(x))
# })
# allControv[6]<-cell_spec(allControv[[6]], color = "white", bold = T,
#     background = spec_color(1:10, end = 0.9, option = "A", direction = -1))
kbl(allControv, escape = F, align = "c") %>%
  kable_classic("striped", full_width = F)
```

<table class=" lightable-classic lightable-striped" style="font-family: &quot;Arial Narrow&quot;, &quot;Source Sans Pro&quot;, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:center;">

controvers

</th>
<th style="text-align:center;">

belief

</th>
<th style="text-align:center;">

opinion

</th>
<th style="text-align:center;">

republican

</th>
<th style="text-align:center;">

humanInduced

</th>
<th style="text-align:center;">

SUM

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

./Sara/Muller2021a.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Harker_Schuch2013.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

115

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

118

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Harker_Schuch2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

9

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Lozano2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Pekel2019.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Littrell2022.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Blaum2017.pdf

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

15

</td>
<td style="text-align:center;">

11

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

30

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/McNeill2012.pdf

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

20

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

24

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Cibik2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Smith2019.pdf

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

20

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

23

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Lambert2013.pdf

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

40

</td>
<td style="text-align:center;">

11

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

57

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Salsabila2019.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Kabir2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Bodzin2014.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Kern2017.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Sellmann2013.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Gladwin2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Kinsey2012.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Petersen2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Leckey2021a.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Taber2009.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Baker2013.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Monroe2016.pdf

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

6

</td>
<td style="text-align:center;">

6

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

22

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Schubatzky2022.pdf

</td>
<td style="text-align:center;">

8

</td>
<td style="text-align:center;">

18

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

27

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bopardikar2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Chattuchai2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Lester2006.pdf

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Trott2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Lambert2012.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Holthuis2014.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bhattacharya2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Feierabend2012.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Steffensen2022.pdf

</td>
<td style="text-align:center;">

60

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

13

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

75

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Porter2012.pdf

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Lombardi2013.pdf

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

6

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

41

</td>
<td style="text-align:center;">

50

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Arya2016.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

13

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

16

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Khadka2021.pdf

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Boon2016.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

15

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

17

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Aksut2016.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Dormody2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Shea2016.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

22

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

25

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bozdogan2011.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/DeWaters2014.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Korfgen2017.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Choi2021.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Salas_Rueda2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

12

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Parant2017.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Aksel_Stenberdt2023.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Puttick2018.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Kubisch2022.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Nakamura2019.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Liu2015.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

37

</td>
<td style="text-align:center;">

9

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

51

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bofferding2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Roychoudhury2017.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Chang2018.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Nicholas_Figueroa2017.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bentz2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Williams2017.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Varma2012.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Visintainer2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Dormody2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Levrini2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

6

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Svihla2012.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Mason1998.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Reinfried2012.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Siegner2018.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Zografakis2008.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/McGowan2022.pdf

</td>
<td style="text-align:center;">

6

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Sternang2012.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Meya2018.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

54

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

58

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Xie2014.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Cebesoy2019.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

11

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

15

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Kolenaty2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

9

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Kumar2023.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Sellmann2013a.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Skains2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Muller2021.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Stevenson2018.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

13

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

14

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/McNeal2014a.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Sukardi2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Lawson2019a.pdf

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Nussbaum2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Herrick2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Turner2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Jin2013.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Markowitz2018.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Oberauer2023.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Pruneau2006a.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Tasquier2017.pdf

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

6

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

19

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Gold2015a.pdf

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./results_graphs_number.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Dal2015a.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Trott2022.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Karpudewan2015a.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Sutela2023.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Walsh2019.pdf

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Saribaş2016.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Trott2019.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Klosterman2010.pdf

</td>
<td style="text-align:center;">

35

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

37

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Flora2014.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

13

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

14

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Schuster2008.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Nkoana2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Feldpausch_Parker2013.pdf

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/da_Rocha2020.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Eggert2017.pdf

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Zhong2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Sundberg2013.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Ratinen2013.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Veijalainen2013.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Ruboon2012.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Roscoe2013.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Taylor2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Trott2020b.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Sumrall2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Li2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Raes2016.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Silva2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Pruneau2006.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Wang2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Pruneau2003.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

9

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

13

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Miller2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Karpudewan2017.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Tasti2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Cebesoy2022.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

15

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

17

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Trott2020a.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

7

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Jones2021.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Walsh2018.pdf

</td>
<td style="text-align:center;">

10

</td>
<td style="text-align:center;">

24

</td>
<td style="text-align:center;">

9

</td>
<td style="text-align:center;">

27

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

70

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Sellmann2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Chin2016.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

8

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Gutierrez2022.pdf

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

19

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

24

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Goulah2017.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Leckey2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Karpudewan2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Faria2015.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Tasquier2015.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Schrot2021a.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Leitao2022.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Hu2016.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

9

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Park2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Keller2019.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Stevenson2018a.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

19

</td>
<td style="text-align:center;">

5

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

27

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Jacobson2017.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Deisenrieder2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Ross2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/White2022.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

25

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

33

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Vicente2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Parth2020.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

4

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Nafisah2022.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Korsager2015.pdf

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Breslyn2019.pdf

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Akaygun2021.pdf

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Drewes2018.pdf

</td>
<td style="text-align:center;">

3

</td>
<td style="text-align:center;">

2

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

0

</td>
<td style="text-align:center;">

1

</td>
<td style="text-align:center;">

7

</td>
</tr>
</tbody>
</table>

# 5 Earthquakes

“Earthq\*”

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "earthq" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Ana/Chang2018.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Williams2017.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Nkoana2020.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Silva2021.pdf

</td>
<td style="text-align:left;">

8

</td>
</tr>
</tbody>
</table>

“se?ism\*”

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "se?ism" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<thead>
<tr>
<th style="text-align:left;">

x

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

./Benjamin/Silva2021.pdf

</td>
</tr>
<tr>
<td style="text-align:left;">

59

</td>
</tr>
</tbody>
</table>

# 6 Misconception

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "misconception" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Sara/Pekel2019.pdf

</td>
<td style="text-align:left;">

14

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/McNeill2012.pdf

</td>
<td style="text-align:left;">

21

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Smith2019.pdf

</td>
<td style="text-align:left;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Bodzin2014.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Taber2009.pdf

</td>
<td style="text-align:left;">

19

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Baker2013.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Monroe2016.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lambert2012.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Porter2012.pdf

</td>
<td style="text-align:left;">

23

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Lombardi2013.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Boon2016.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Aksut2016.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Dormody2021.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Shea2016.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Bozdogan2011.pdf

</td>
<td style="text-align:left;">

43

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/DeWaters2014.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Kubisch2022.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Nakamura2019.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Liu2015.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Bofferding2015.pdf

</td>
<td style="text-align:left;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Roychoudhury2017.pdf

</td>
<td style="text-align:left;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Chang2018.pdf

</td>
<td style="text-align:left;">

69

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Mason1998.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Reinfried2012.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Sternang2012.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kolenaty2022.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kumar2023.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/McNeal2014a.pdf

</td>
<td style="text-align:left;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Nussbaum2015.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Tasquier2017.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Gold2015a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Dal2015a.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Karpudewan2015a.pdf

</td>
<td style="text-align:left;">

63

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Saribaş2016.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Klosterman2010.pdf

</td>
<td style="text-align:left;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Sundberg2013.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Ratinen2013.pdf

</td>
<td style="text-align:left;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Taylor2020.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Karpudewan2017.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Tasti2021.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Cebesoy2022.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Sellmann2015.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Gutierrez2022.pdf

</td>
<td style="text-align:left;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Karpudewan2015.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Faria2015.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/White2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Korsager2015.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Drewes2018.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
</tbody>
</table>

# 7 Outcomes

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "behaviou?r" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_behavior<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes<-data.frame(behavior=as.integer(sapply(sep,function(x)x[2])),
                     row.names=sapply(sep,function(x)x[1]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "attitude" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_attitude<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$attitude<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "knowledge" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_knowledge<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$knowledge<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "understand*" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_understanding<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$understand<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "aware" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_awareness<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$aware<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "belief" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_belief<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$belief<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "conscious" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_conscious<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$conscious<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e " concern(ed)? " {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_concern<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$concern<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "emot" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_emot<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$emot<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "hope" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_emot<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$hope<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "fear" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_fear<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$fear<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "empath" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_empath<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$empath<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "worr" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_worr<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$worr<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "feeling" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_feeling<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$feeling<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "willingness to" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_willingness_to<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$willingness_to<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "intent" {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_intent<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$intent<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e " habits? " {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_habit<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$habit<-as.integer(sapply(sep,function(x)x[2]))
```

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e " actions? " {} \\;'),intern = T)
sep <- strsplit(raw,":")
sep_habit<-sep
#kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
outcomes$action<-as.integer(sapply(sep,function(x)x[2]))
```

## 7.1 recapitulative table: outcomes

``` r
kable(outcomes)%>%
  add_header_above(c(" "=1,"General"=2,"Knowledge"=2,"awareness"=3,"emotion"=7,"intent"=2,"habit"=1,"action"=1))
```

<table>
<thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1">
</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

General

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Knowledge

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="3">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

awareness

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="7">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

emotion

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

intent

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="1">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

habit

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="1">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

action

</div>

</th>
</tr>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">

behavior

</th>
<th style="text-align:right;">

attitude

</th>
<th style="text-align:right;">

knowledge

</th>
<th style="text-align:right;">

understand

</th>
<th style="text-align:right;">

aware

</th>
<th style="text-align:right;">

belief

</th>
<th style="text-align:right;">

conscious

</th>
<th style="text-align:right;">

concern

</th>
<th style="text-align:right;">

emot

</th>
<th style="text-align:right;">

hope

</th>
<th style="text-align:right;">

fear

</th>
<th style="text-align:right;">

empath

</th>
<th style="text-align:right;">

worr

</th>
<th style="text-align:right;">

feeling

</th>
<th style="text-align:right;">

willingness_to

</th>
<th style="text-align:right;">

intent

</th>
<th style="text-align:right;">

habit

</th>
<th style="text-align:right;">

action

</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">

./Sara/Muller2021a.pdf

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

38

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Harker_Schuch2013.pdf

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

79

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Harker_Schuch2020.pdf

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

73

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Lozano2022.pdf

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

130

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Pekel2019.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Littrell2022.pdf

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

17

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Blaum2017.pdf

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/McNeill2012.pdf

</td>
<td style="text-align:right;">

48

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:right;">

100

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

56

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Cibik2022.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Smith2019.pdf

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Lambert2013.pdf

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

62

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

11

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Salsabila2019.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Kabir2015.pdf

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Bodzin2014.pdf

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:right;">

58

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sara/Kern2017.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:right;">

46

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Sellmann2013.pdf

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

63

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Gladwin2022.pdf

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

15

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Kinsey2012.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Petersen2020.pdf

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Leckey2021a.pdf

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Taber2009.pdf

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:right;">

51

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Baker2013.pdf

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Monroe2016.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

41

</td>
<td style="text-align:right;">

37

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Schubatzky2022.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bopardikar2021.pdf

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

42

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Chattuchai2015.pdf

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Lester2006.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

74

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

14

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Trott2020.pdf

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

70

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Lambert2012.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:right;">

68

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Holthuis2014.pdf

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bhattacharya2021.pdf

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Feierabend2012.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Steffensen2022.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Porter2012.pdf

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

68

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Lombardi2013.pdf

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

55

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Arya2016.pdf

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

45

</td>
<td style="text-align:right;">

47

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Khadka2021.pdf

</td>
<td style="text-align:right;">

34

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Boon2016.pdf

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:right;">

120

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

15

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Aksut2016.pdf

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Dormody2021.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Shea2016.pdf

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:right;">

47

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bozdogan2011.pdf

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/DeWaters2014.pdf

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Korfgen2017.pdf

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Choi2021.pdf

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

43

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

37

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Salas_Rueda2021.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Parant2017.pdf

</td>
<td style="text-align:right;">

70

</td>
<td style="text-align:right;">

42

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Aksel_Stenberdt2023.pdf

</td>
<td style="text-align:right;">

95

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

62

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

51

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Puttick2018.pdf

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

34

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Kubisch2022.pdf

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

73

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

22

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Nakamura2019.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Liu2015.pdf

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:right;">

58

</td>
<td style="text-align:right;">

51

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

37

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bofferding2015.pdf

</td>
<td style="text-align:right;">

59

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

65

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

45

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Roychoudhury2017.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

44

</td>
<td style="text-align:right;">

46

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Chang2018.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Nicholas_Figueroa2017.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Bentz2020.pdf

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Williams2017.pdf

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Varma2012.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

41

</td>
<td style="text-align:right;">

49

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Ana/Visintainer2015.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

182

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

48

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Dormody2020.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Levrini2021.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

36

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Svihla2012.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

72

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Mason1998.pdf

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

53

</td>
<td style="text-align:right;">

43

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Reinfried2012.pdf

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

101

</td>
<td style="text-align:right;">

84

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Siegner2018.pdf

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

19

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Zografakis2008.pdf

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/McGowan2022.pdf

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

28

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Sternang2012.pdf

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Meya2018.pdf

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

54

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Xie2014.pdf

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

54

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Cebesoy2019.pdf

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

45

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Kolenaty2022.pdf

</td>
<td style="text-align:right;">

66

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:right;">

183

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

49

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

48

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

56

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Kumar2023.pdf

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Sergio/Sellmann2013a.pdf

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:right;">

53

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Skains2022.pdf

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

13

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Muller2021.pdf

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

38

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Stevenson2018.pdf

</td>
<td style="text-align:right;">

106

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

74

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

60

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/McNeal2014a.pdf

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

62

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Sukardi2022.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Lawson2019a.pdf

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

59

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Nussbaum2015.pdf

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Herrick2022.pdf

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

41

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Turner2022.pdf

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

43

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Jin2013.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Markowitz2018.pdf

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

42

</td>
<td style="text-align:right;">

60

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Oberauer2023.pdf

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

173

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Pruneau2006a.pdf

</td>
<td style="text-align:right;">

87

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

37

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Tasquier2017.pdf

</td>
<td style="text-align:right;">

141

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

156

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

42

</td>
</tr>
<tr>
<td style="text-align:left;">

./Luisa/Gold2015a.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./results_graphs_number.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Dal2015a.pdf

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

27

</td>
<td style="text-align:right;">

97

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Trott2022.pdf

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

43

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Karpudewan2015a.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

54

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Sutela2023.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Walsh2019.pdf

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

24

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Saribaş2016.pdf

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Trott2019.pdf

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

77

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Klosterman2010.pdf

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

77

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Flora2014.pdf

</td>
<td style="text-align:right;">

59

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

35

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Schuster2008.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Nkoana2020.pdf

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

41

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Feldpausch_Parker2013.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/da_Rocha2020.pdf

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

16

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Eggert2017.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

71

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./JuanGabriel/Zhong2021.pdf

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Sundberg2013.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Ratinen2013.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

49

</td>
<td style="text-align:right;">

74

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Veijalainen2013.pdf

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Ruboon2012.pdf

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

37

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Roscoe2013.pdf

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Taylor2020.pdf

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Trott2020b.pdf

</td>
<td style="text-align:right;">

36

</td>
<td style="text-align:right;">

57

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

51

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Sumrall2021.pdf

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Li2022.pdf

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

51

</td>
<td style="text-align:right;">

59

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Raes2016.pdf

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

76

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Silva2021.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Pruneau2006.pdf

</td>
<td style="text-align:right;">

69

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

19

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Wang2022.pdf

</td>
<td style="text-align:right;">

78

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

56

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

86

</td>
<td style="text-align:right;">

55

</td>
<td style="text-align:right;">

56

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">

./Benjamin/Pruneau2003.pdf

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

25

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Miller2015.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Karpudewan2017.pdf

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

42

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Tasti2021.pdf

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

48

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

75

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Cebesoy2022.pdf

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Trott2020a.pdf

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

66

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

50

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

16

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

76

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Jones2021.pdf

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

129

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

13

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Walsh2018.pdf

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

37

</td>
<td style="text-align:right;">

56

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

16

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Sellmann2015.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Chin2016.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Gutierrez2022.pdf

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

60

</td>
<td style="text-align:right;">

30

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Goulah2017.pdf

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Leckey2021.pdf

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

22

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Karpudewan2015.pdf

</td>
<td style="text-align:right;">

40

</td>
<td style="text-align:right;">

117

</td>
<td style="text-align:right;">

96

</td>
<td style="text-align:right;">

51

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Faria2015.pdf

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Tasquier2015.pdf

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Schrot2021a.pdf

</td>
<td style="text-align:right;">

23

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

25

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

24

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Leitao2022.pdf

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

24

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Hu2016.pdf

</td>
<td style="text-align:right;">

46

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Park2020.pdf

</td>
<td style="text-align:right;">

17

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

32

</td>
<td style="text-align:right;">

10

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

23

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Keller2019.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Stevenson2018a.pdf

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

19

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

26

</td>
<td style="text-align:right;">

44

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

29

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

22

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Jacobson2017.pdf

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

101

</td>
<td style="text-align:right;">

31

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Deisenrieder2020.pdf

</td>
<td style="text-align:right;">

67

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

43

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

38

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

20

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

42

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Ross2021.pdf

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

15

</td>
<td style="text-align:right;">

39

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

39

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/White2022.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

8

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Vicente2020.pdf

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

14

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Parth2020.pdf

</td>
<td style="text-align:right;">

21

</td>
<td style="text-align:right;">

77

</td>
<td style="text-align:right;">

123

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

5

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

65

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Nafisah2022.pdf

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

11

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

12

</td>
<td style="text-align:right;">

34

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Korsager2015.pdf

</td>
<td style="text-align:right;">

3

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

34

</td>
<td style="text-align:right;">

50

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Breslyn2019.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

13

</td>
<td style="text-align:right;">

52

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Akaygun2021.pdf

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

7

</td>
<td style="text-align:right;">

18

</td>
<td style="text-align:right;">

33

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">

./Marius/Drewes2018.pdf

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

42

</td>
<td style="text-align:right;">

28

</td>
<td style="text-align:right;">

6

</td>
<td style="text-align:right;">

2

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
<td style="text-align:right;">

4

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

1

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

0

</td>
<td style="text-align:right;">

9

</td>
</tr>
</tbody>
</table>

``` r
require(openxlsx)
```

    ## Loading required package: openxlsx

``` r
write.xlsx(x=outcomes,file="outcomePdfWords.xlsx")
```
