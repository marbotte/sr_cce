Searching words in the pdfs
================
Marius Bottin
2024-01-24

- [1 Number of pages](#1-number-of-pages)
- [2 Psycho](#2-psycho)
- [3 Self-efficacy](#3-self-efficacy)
- [4 Theory of planned behavior](#4-theory-of-planned-behavior)
- [5 Hope](#5-hope)
- [6 Fear](#6-fear)
- [7 Distress](#7-distress)
- [8 anxi](#8-anxi)

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

# 2 Psycho

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "psycho" {} \\;'),intern = T)
sep <- strsplit(raw,":")
```

``` r
cat("Number of papers: ", sum(sapply(sep,function(x)as.numeric(x[2])>=5)), "/", length(sep), "include the word 5 times or more\n" )
```

    ## Number of papers:  48 / 152 include the word 5 times or more

``` r
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

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Littrell2022.pdf

</td>
<td style="text-align:left;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Blaum2017.pdf

</td>
<td style="text-align:left;">

19

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Smith2019.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Lambert2013.pdf

</td>
<td style="text-align:left;">

8

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

./Ana/Petersen2020.pdf

</td>
<td style="text-align:left;">

18

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Leckey2021a.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Schubatzky2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Trott2020.pdf

</td>
<td style="text-align:left;">

5

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

./Ana/Feierabend2012.pdf

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

11

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Arya2016.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Khadka2021.pdf

</td>
<td style="text-align:left;">

9

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

3

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

28

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Aksel_Stenberdt2023.pdf

</td>
<td style="text-align:left;">

38

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Puttick2018.pdf

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

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Bofferding2015.pdf

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

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Bentz2020.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Williams2017.pdf

</td>
<td style="text-align:left;">

16

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Varma2012.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Dormody2020.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Levrini2021.pdf

</td>
<td style="text-align:left;">

4

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

25

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Zografakis2008.pdf

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

20

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

./Sergio/Cebesoy2019.pdf

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

12

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

./Sergio/Sellmann2013a.pdf

</td>
<td style="text-align:left;">

17

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Skains2022.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Muller2021.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Stevenson2018.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Nussbaum2015.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Herrick2022.pdf

</td>
<td style="text-align:left;">

31

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Jin2013.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Markowitz2018.pdf

</td>
<td style="text-align:left;">

58

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Oberauer2023.pdf

</td>
<td style="text-align:left;">

27

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Pruneau2006a.pdf

</td>
<td style="text-align:left;">

6

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

./JuanGabriel/Trott2022.pdf

</td>
<td style="text-align:left;">

26

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Karpudewan2015a.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Sutela2023.pdf

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

8

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Saribaş2016.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Trott2019.pdf

</td>
<td style="text-align:left;">

19

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

./JuanGabriel/Flora2014.pdf

</td>
<td style="text-align:left;">

2

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

./JuanGabriel/Zhong2021.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Veijalainen2013.pdf

</td>
<td style="text-align:left;">

11

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Ruboon2012.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Roscoe2013.pdf

</td>
<td style="text-align:left;">

5

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

./Benjamin/Trott2020b.pdf

</td>
<td style="text-align:left;">

15

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Raes2016.pdf

</td>
<td style="text-align:left;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Wang2022.pdf

</td>
<td style="text-align:left;">

24

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

./Marius/Miller2015.pdf

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

7

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

./Marius/Trott2020a.pdf

</td>
<td style="text-align:left;">

19

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Jones2021.pdf

</td>
<td style="text-align:left;">

7

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Walsh2018.pdf

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

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Gutierrez2022.pdf

</td>
<td style="text-align:left;">

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Goulah2017.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Leckey2021.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Karpudewan2015.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Schrot2021a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Leitao2022.pdf

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

12

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Keller2019.pdf

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

9

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Jacobson2017.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Deisenrieder2020.pdf

</td>
<td style="text-align:left;">

18

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Ross2021.pdf

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

./Marius/Korsager2015.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Drewes2018.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
</tbody>
</table>

# 3 Self-efficacy

“Self-efficacy” or “self efficacy”:

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "self.efficacy" {} \\;'),intern = T)
sep <- strsplit(raw,":")
```

``` r
cat("Number of papers: ", sum(sapply(sep,function(x)as.numeric(x[2])>=5)), "/", length(sep), "include the word 5 times or more\n" )
```

    ## Number of papers:  12 / 152 include the word 5 times or more

``` r
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

61

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

31

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

# 4 Theory of planned behavior

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "planned[ -]behaviou?r" {} \\;'),intern = T)
sep <- strsplit(raw,":")
```

``` r
cat("Number of papers: ", sum(sapply(sep,function(x)as.numeric(x[2])>=5)), "/", length(sep), "include the word 5 times or more\n" )
```

    ## Number of papers:  1 / 152 include the word 5 times or more

``` r
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

# 5 Hope

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "hope" {} \\;'),intern = T)
sep <- strsplit(raw,":")
```

``` r
cat("Number of papers: ", sum(sapply(sep,function(x)as.numeric(x[2])>=5)), "/", length(sep), "include the word 5 times or more\n" )
```

    ## Number of papers:  17 / 152 include the word 5 times or more

``` r
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

./Sara/Harker_Schuch2020.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Littrell2022.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Lambert2013.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Gladwin2022.pdf

</td>
<td style="text-align:left;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Leckey2021a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Trott2020.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Holthuis2014.pdf

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

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Khadka2021.pdf

</td>
<td style="text-align:left;">

28

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Puttick2018.pdf

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

./Ana/Nicholas_Figueroa2017.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Bentz2020.pdf

</td>
<td style="text-align:left;">

10

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Levrini2021.pdf

</td>
<td style="text-align:left;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Siegner2018.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/McGowan2022.pdf

</td>
<td style="text-align:left;">

14

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kolenaty2022.pdf

</td>
<td style="text-align:left;">

17

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Skains2022.pdf

</td>
<td style="text-align:left;">

2

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

60

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

./Luisa/Herrick2022.pdf

</td>
<td style="text-align:left;">

21

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Oberauer2023.pdf

</td>
<td style="text-align:left;">

20

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Trott2022.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Sutela2023.pdf

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

10

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/da_Rocha2020.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Trott2020b.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Sumrall2021.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Wang2022.pdf

</td>
<td style="text-align:left;">

55

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Trott2020a.pdf

</td>
<td style="text-align:left;">

16

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Jones2021.pdf

</td>
<td style="text-align:left;">

18

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Leckey2021.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Park2020.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Stevenson2018a.pdf

</td>
<td style="text-align:left;">

44

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Jacobson2017.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Deisenrieder2020.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Ross2021.pdf

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

4

</td>
</tr>
</tbody>
</table>

# 6 Fear

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "fear" {} \\;'),intern = T)
sep <- strsplit(raw,":")
```

``` r
cat("Number of papers: ", sum(sapply(sep,function(x)as.numeric(x[2])>=5)), "/", length(sep), "include the word 5 times or more\n" )
```

    ## Number of papers:  5 / 152 include the word 5 times or more

``` r
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
<td style="text-align:left;">

init

</td>
<td style="text-align:left;">

./Sara/Harker_Schuch2020.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sara/Lozano2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Ana/Gladwin2022.pdf

</td>
<td style="text-align:left;">

2

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

./Ana/Parant2017.pdf

</td>
<td style="text-align:left;">

20

</td>
</tr>
<tr>
<td style="text-align:left;">
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

./Sergio/Levrini2021.pdf

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

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Herrick2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Markowitz2018.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Oberauer2023.pdf

</td>
<td style="text-align:left;">

8

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

./JuanGabriel/Trott2022.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Benjamin/Wang2022.pdf

</td>
<td style="text-align:left;">

56

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Jones2021.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
</tbody>
</table>

# 7 Distress

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "distress" {} \\;'),intern = T)
sep <- strsplit(raw,":")
```

``` r
cat("Number of papers: ", sum(sapply(sep,function(x)as.numeric(x[2])>=5)), "/", length(sep), "include the word 5 times or more\n" )
```

    ## Number of papers:  0 / 152 include the word 5 times or more

``` r
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

<table>
<tbody>
<tr>
</tr>
</tbody>
</table>

# 8 anxi

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "anxi" {} \\;'),intern = T)
sep <- strsplit(raw,":")
```

``` r
cat("Number of papers: ", sum(sapply(sep,function(x)as.numeric(x[2])>=5)), "/", length(sep), "include the word 5 times or more\n" )
```

    ## Number of papers:  4 / 152 include the word 5 times or more

``` r
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

./Sergio/Levrini2021.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/McGowan2022.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Sergio/Kolenaty2022.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Muller2021.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Markowitz2018.pdf

</td>
<td style="text-align:left;">

5

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Luisa/Oberauer2023.pdf

</td>
<td style="text-align:left;">

4

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Trott2022.pdf

</td>
<td style="text-align:left;">

6

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./JuanGabriel/Sutela2023.pdf

</td>
<td style="text-align:left;">

2

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

./Benjamin/Wang2022.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Trott2020a.pdf

</td>
<td style="text-align:left;">

2

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Jones2021.pdf

</td>
<td style="text-align:left;">

12

</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">

./Marius/Leitao2022.pdf

</td>
<td style="text-align:left;">

3

</td>
</tr>
</tbody>
</table>
