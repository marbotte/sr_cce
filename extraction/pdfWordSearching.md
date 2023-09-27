Searching words in the pdfs
================
Marius Bottin
2023-09-27

- [1 Self-efficacy](#1-self-efficacy)
- [2 Theory of planned behavior](#2-theory-of-planned-behavior)
- [3 Controversy](#3-controversy)
  - [3.1 Controvers](#31-controvers)
  - [3.2 Belief](#32-belief)
  - [3.3 Opinion](#33-opinion)
  - [3.4 Republican](#34-republican)
  - [3.5 Human-induced](#35-human-induced)
  - [3.6 All controversy table](#36-all-controversy-table)
- [4 Earthquakes](#4-earthquakes)
- [5 Misconception](#5-misconception)

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

# 1 Self-efficacy

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

# 2 Theory of planned behavior

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

# 3 Controversy

## 3.1 Controvers

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

## 3.2 Belief

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

## 3.3 Opinion

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

## 3.4 Republican

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

## 3.5 Human-induced

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

## 3.6 All controversy table

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

# 4 Earthquakes

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

# 5 Misconception

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