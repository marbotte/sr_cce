Searching words in the pdfs
================
Marius Bottin
2023-09-22

- [1 Self-efficacy](#1-self-efficacy)
- [2 Controversy](#2-controversy)
  - [2.1 Controvers](#21-controvers)
  - [2.2 Belief](#22-belief)
  - [2.3 Opinion](#23-opinion)
  - [2.4 Republican](#24-republican)
- [3 Earthquakes](#3-earthquakes)
- [4 Misconception](#4-misconception)

``` r
require(knitr)
```

    ## Loading required package: knitr

``` r
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

|      |                               |     |
|:-----|:------------------------------|:----|
| init | ./Sara/Muller2021a.pdf        | 2   |
|      | ./Ana/Petersen2020.pdf        | 25  |
|      | ./Ana/Schubatzky2022.pdf      | 48  |
|      | ./Ana/Boon2016.pdf            | 4   |
|      | ./Ana/DeWaters2014.pdf        | 21  |
|      | ./Ana/Aksel_Stenberdt2023.pdf | 41  |
|      | ./Sergio/Kolenaty2022.pdf     | 60  |
|      | ./Luisa/Muller2021.pdf        | 2   |
|      | ./Luisa/Stevenson2018.pdf     | 5   |
|      | ./Luisa/Nussbaum2015.pdf      | 6   |
|      | ./Luisa/Oberauer2023.pdf      | 2   |
|      | ./JuanGabriel/Saribaş2016.pdf | 3   |
|      | ./JuanGabriel/Trott2019.pdf   | 3   |
|      | ./JuanGabriel/Flora2014.pdf   | 14  |
|      | ./Benjamin/Wang2022.pdf       | 11  |
|      | ./Marius/Gutierrez2022.pdf    | 8   |
|      | ./Marius/Deisenrieder2020.pdf | 25  |
|      | ./Marius/Ross2021.pdf         | 6   |

# 2 Controversy

## 2.1 Controvers

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "controvers" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

|      |                                         |     |
|:-----|:----------------------------------------|:----|
| init | ./Sara/Blaum2017.pdf                    | 4   |
|      | ./Sara/McNeill2012.pdf                  | 3   |
|      | ./Sara/Smith2019.pdf                    | 2   |
|      | ./Sara/Lambert2013.pdf                  | 3   |
|      | ./Ana/Monroe2016.pdf                    | 7   |
|      | ./Ana/Schubatzky2022.pdf                | 8   |
|      | ./Ana/Lester2006.pdf                    | 2   |
|      | ./Ana/Steffensen2022.pdf                | 60  |
|      | ./Ana/Porter2012.pdf                    | 2   |
|      | ./Ana/Lombardi2013.pdf                  | 3   |
|      | ./Ana/Khadka2021.pdf                    | 2   |
|      | ./Sergio/McGowan2022.pdf                | 6   |
|      | ./Luisa/Lawson2019a.pdf                 | 2   |
|      | ./Luisa/Tasquier2017.pdf                | 4   |
|      | ./Luisa/Gold2015a.pdf                   | 2   |
|      | ./JuanGabriel/Walsh2019.pdf             | 2   |
|      | ./JuanGabriel/Klosterman2010.pdf        | 35  |
|      | ./JuanGabriel/Feldpausch_Parker2013.pdf | 7   |
|      | ./JuanGabriel/Eggert2017.pdf            | 5   |
|      | ./Marius/Walsh2018.pdf                  | 10  |
|      | ./Marius/Gutierrez2022.pdf              | 4   |
|      | ./Marius/Breslyn2019.pdf                | 2   |
|      | ./Marius/Drewes2018.pdf                 | 3   |

## 2.2 Belief

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "belief" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

|      |                                |     |
|:-----|:-------------------------------|:----|
| init | ./Sara/Muller2021a.pdf         | 4   |
|      | ./Sara/Harker_Schuch2013.pdf   | 3   |
|      | ./Sara/Harker_Schuch2020.pdf   | 3   |
|      | ./Sara/Blaum2017.pdf           | 15  |
|      | ./Sara/McNeill2012.pdf         | 20  |
|      | ./Sara/Smith2019.pdf           | 20  |
|      | ./Sara/Lambert2013.pdf         | 40  |
|      | ./Sara/Bodzin2014.pdf          | 3   |
|      | ./Ana/Petersen2020.pdf         | 3   |
|      | ./Ana/Taber2009.pdf            | 7   |
|      | ./Ana/Monroe2016.pdf           | 3   |
|      | ./Ana/Schubatzky2022.pdf       | 18  |
|      | ./Ana/Lester2006.pdf           | 2   |
|      | ./Ana/Holthuis2014.pdf         | 3   |
|      | ./Ana/Steffensen2022.pdf       | 2   |
|      | ./Ana/Lombardi2013.pdf         | 6   |
|      | ./Ana/Arya2016.pdf             | 13  |
|      | ./Ana/Boon2016.pdf             | 15  |
|      | ./Ana/Aksut2016.pdf            | 2   |
|      | ./Ana/Shea2016.pdf             | 22  |
|      | ./Ana/DeWaters2014.pdf         | 3   |
|      | ./Ana/Parant2017.pdf           | 3   |
|      | ./Ana/Aksel_Stenberdt2023.pdf  | 7   |
|      | ./Ana/Liu2015.pdf              | 37  |
|      | ./Ana/Bofferding2015.pdf       | 4   |
|      | ./Ana/Roychoudhury2017.pdf     | 2   |
|      | ./Ana/Chang2018.pdf            | 4   |
|      | ./Ana/Bentz2020.pdf            | 2   |
|      | ./Ana/Williams2017.pdf         | 2   |
|      | ./Sergio/Mason1998.pdf         | 2   |
|      | ./Sergio/Siegner2018.pdf       | 2   |
|      | ./Sergio/McGowan2022.pdf       | 3   |
|      | ./Sergio/Sternang2012.pdf      | 5   |
|      | ./Sergio/Meya2018.pdf          | 54  |
|      | ./Sergio/Xie2014.pdf           | 5   |
|      | ./Sergio/Cebesoy2019.pdf       | 2   |
|      | ./Sergio/Kolenaty2022.pdf      | 9   |
|      | ./Sergio/Kumar2023.pdf         | 3   |
|      | ./Luisa/Muller2021.pdf         | 4   |
|      | ./Luisa/Stevenson2018.pdf      | 13  |
|      | ./Luisa/Lawson2019a.pdf        | 2   |
|      | ./Luisa/Oberauer2023.pdf       | 2   |
|      | ./Luisa/Tasquier2017.pdf       | 7   |
|      | ./Luisa/Gold2015a.pdf          | 2   |
|      | ./JuanGabriel/Trott2022.pdf    | 4   |
|      | ./JuanGabriel/Saribaş2016.pdf  | 5   |
|      | ./JuanGabriel/Trott2019.pdf    | 5   |
|      | ./JuanGabriel/Flora2014.pdf    | 13  |
|      | ./JuanGabriel/Nkoana2020.pdf   | 3   |
|      | ./JuanGabriel/da_Rocha2020.pdf | 2   |
|      | ./Benjamin/Sundberg2013.pdf    | 3   |
|      | ./Benjamin/Ratinen2013.pdf     | 3   |
|      | ./Benjamin/Trott2020b.pdf      | 7   |
|      | ./Benjamin/Sumrall2021.pdf     | 3   |
|      | ./Benjamin/Wang2022.pdf        | 5   |
|      | ./Benjamin/Pruneau2003.pdf     | 4   |
|      | ./Marius/Tasti2021.pdf         | 4   |
|      | ./Marius/Trott2020a.pdf        | 7   |
|      | ./Marius/Jones2021.pdf         | 2   |
|      | ./Marius/Walsh2018.pdf         | 24  |
|      | ./Marius/Gutierrez2022.pdf     | 19  |
|      | ./Marius/Goulah2017.pdf        | 5   |
|      | ./Marius/Tasquier2015.pdf      | 2   |
|      | ./Marius/Hu2016.pdf            | 9   |
|      | ./Marius/Stevenson2018a.pdf    | 19  |
|      | ./Marius/Deisenrieder2020.pdf  | 4   |
|      | ./Marius/Ross2021.pdf          | 2   |
|      | ./Marius/White2022.pdf         | 4   |
|      | ./Marius/Parth2020.pdf         | 4   |
|      | ./Marius/Drewes2018.pdf        | 2   |

## 2.3 Opinion

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "opinion" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

|      |                                   |     |
|:-----|:----------------------------------|:----|
| init | ./Sara/Harker_Schuch2013.pdf      | 115 |
|      | ./Sara/Harker_Schuch2020.pdf      | 9   |
|      | ./Sara/Lozano2022.pdf             | 2   |
|      | ./Sara/Blaum2017.pdf              | 11  |
|      | ./Sara/Lambert2013.pdf            | 11  |
|      | ./Ana/Sellmann2013.pdf            | 3   |
|      | ./Ana/Gladwin2022.pdf             | 3   |
|      | ./Ana/Baker2013.pdf               | 2   |
|      | ./Ana/Monroe2016.pdf              | 6   |
|      | ./Ana/Lester2006.pdf              | 4   |
|      | ./Ana/Lambert2012.pdf             | 2   |
|      | ./Ana/Holthuis2014.pdf            | 7   |
|      | ./Ana/Bhattacharya2021.pdf        | 2   |
|      | ./Ana/Feierabend2012.pdf          | 5   |
|      | ./Ana/Steffensen2022.pdf          | 13  |
|      | ./Ana/Porter2012.pdf              | 3   |
|      | ./Ana/Arya2016.pdf                | 2   |
|      | ./Ana/Shea2016.pdf                | 2   |
|      | ./Ana/DeWaters2014.pdf            | 3   |
|      | ./Ana/Choi2021.pdf                | 4   |
|      | ./Ana/Salas_Rueda2021.pdf         | 12  |
|      | ./Ana/Liu2015.pdf                 | 9   |
|      | ./Sergio/Levrini2021.pdf          | 6   |
|      | ./Sergio/Svihla2012.pdf           | 2   |
|      | ./Sergio/Mason1998.pdf            | 4   |
|      | ./Sergio/Reinfried2012.pdf        | 4   |
|      | ./Sergio/Siegner2018.pdf          | 2   |
|      | ./Sergio/Sternang2012.pdf         | 4   |
|      | ./Sergio/Meya2018.pdf             | 4   |
|      | ./Sergio/Cebesoy2019.pdf          | 11  |
|      | ./Sergio/Kumar2023.pdf            | 3   |
|      | ./Luisa/McNeal2014a.pdf           | 2   |
|      | ./Luisa/Sukardi2022.pdf           | 4   |
|      | ./Luisa/Lawson2019a.pdf           | 3   |
|      | ./Luisa/Jin2013.pdf               | 2   |
|      | ./Luisa/Pruneau2006a.pdf          | 3   |
|      | ./Luisa/Tasquier2017.pdf          | 6   |
|      | ./JuanGabriel/Karpudewan2015a.pdf | 2   |
|      | ./JuanGabriel/Klosterman2010.pdf  | 2   |
|      | ./JuanGabriel/da_Rocha2020.pdf    | 3   |
|      | ./Benjamin/Sundberg2013.pdf       | 2   |
|      | ./Benjamin/Ratinen2013.pdf        | 2   |
|      | ./Benjamin/Pruneau2006.pdf        | 2   |
|      | ./Benjamin/Pruneau2003.pdf        | 9   |
|      | ./Marius/Cebesoy2022.pdf          | 15  |
|      | ./Marius/Jones2021.pdf            | 2   |
|      | ./Marius/Walsh2018.pdf            | 9   |
|      | ./Marius/Sellmann2015.pdf         | 4   |
|      | ./Marius/Chin2016.pdf             | 8   |
|      | ./Marius/Tasquier2015.pdf         | 5   |
|      | ./Marius/Stevenson2018a.pdf       | 5   |
|      | ./Marius/White2022.pdf            | 25  |
|      | ./Marius/Vicente2020.pdf          | 2   |
|      | ./Marius/Parth2020.pdf            | 2   |

## 2.4 Republican

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "republican" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

|      |                             |     |
|:-----|:----------------------------|:----|
| init | ./Sara/Lambert2013.pdf      | 3   |
|      | ./Ana/Monroe2016.pdf        | 6   |
|      | ./Marius/Walsh2018.pdf      | 27  |
|      | ./Marius/Stevenson2018a.pdf | 3   |
|      | ./Marius/White2022.pdf      | 2   |

# 3 Earthquakes

“Earthq\*”

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "earthq" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

|      |                              |     |
|:-----|:-----------------------------|:----|
| init | ./Ana/Chang2018.pdf          | 3   |
|      | ./Ana/Williams2017.pdf       | 2   |
|      | ./JuanGabriel/Nkoana2020.pdf | 5   |
|      | ./Benjamin/Silva2021.pdf     | 8   |

“se?ism\*”

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "se?ism" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

| x                        |
|:-------------------------|
| ./Benjamin/Silva2021.pdf |
| 59                       |

# 4 Misconception

``` r
setwd(dos)
raw <- system(paste("find",'-name "*.pdf"','-exec pdfgrep -icH -e "misconception" {} \\;'),intern = T)
sep <- strsplit(raw,":")
kable(Reduce(rbind,sep[sapply(sep,function(x)as.numeric(x[2])>1)]),row.names = NA)
```

|      |                                   |     |
|:-----|:----------------------------------|:----|
| init | ./Sara/Pekel2019.pdf              | 14  |
|      | ./Sara/McNeill2012.pdf            | 21  |
|      | ./Sara/Smith2019.pdf              | 10  |
|      | ./Sara/Bodzin2014.pdf             | 3   |
|      | ./Ana/Taber2009.pdf               | 19  |
|      | ./Ana/Baker2013.pdf               | 7   |
|      | ./Ana/Monroe2016.pdf              | 2   |
|      | ./Ana/Lambert2012.pdf             | 3   |
|      | ./Ana/Porter2012.pdf              | 23  |
|      | ./Ana/Lombardi2013.pdf            | 2   |
|      | ./Ana/Boon2016.pdf                | 6   |
|      | ./Ana/Aksut2016.pdf               | 5   |
|      | ./Ana/Dormody2021.pdf             | 6   |
|      | ./Ana/Shea2016.pdf                | 2   |
|      | ./Ana/Bozdogan2011.pdf            | 43  |
|      | ./Ana/DeWaters2014.pdf            | 3   |
|      | ./Ana/Kubisch2022.pdf             | 3   |
|      | ./Ana/Nakamura2019.pdf            | 2   |
|      | ./Ana/Liu2015.pdf                 | 7   |
|      | ./Ana/Bofferding2015.pdf          | 8   |
|      | ./Ana/Roychoudhury2017.pdf        | 8   |
|      | ./Ana/Chang2018.pdf               | 69  |
|      | ./Sergio/Mason1998.pdf            | 3   |
|      | ./Sergio/Reinfried2012.pdf        | 6   |
|      | ./Sergio/Sternang2012.pdf         | 2   |
|      | ./Sergio/Kolenaty2022.pdf         | 2   |
|      | ./Sergio/Kumar2023.pdf            | 2   |
|      | ./Luisa/McNeal2014a.pdf           | 8   |
|      | ./Luisa/Nussbaum2015.pdf          | 4   |
|      | ./Luisa/Tasquier2017.pdf          | 3   |
|      | ./Luisa/Gold2015a.pdf             | 2   |
|      | ./JuanGabriel/Dal2015a.pdf        | 3   |
|      | ./JuanGabriel/Karpudewan2015a.pdf | 63  |
|      | ./JuanGabriel/Saribaş2016.pdf     | 4   |
|      | ./JuanGabriel/Klosterman2010.pdf  | 10  |
|      | ./Benjamin/Sundberg2013.pdf       | 2   |
|      | ./Benjamin/Ratinen2013.pdf        | 9   |
|      | ./Benjamin/Taylor2020.pdf         | 2   |
|      | ./Marius/Karpudewan2017.pdf       | 4   |
|      | ./Marius/Tasti2021.pdf            | 4   |
|      | ./Marius/Cebesoy2022.pdf          | 3   |
|      | ./Marius/Sellmann2015.pdf         | 2   |
|      | ./Marius/Gutierrez2022.pdf        | 12  |
|      | ./Marius/Karpudewan2015.pdf       | 2   |
|      | ./Marius/Faria2015.pdf            | 3   |
|      | ./Marius/White2022.pdf            | 4   |
|      | ./Marius/Korsager2015.pdf         | 2   |
|      | ./Marius/Drewes2018.pdf           | 5   |
