---
title: "Задача 1. Читаем данные"
author: "Maxim Leonov"
output: 
  html_document:
    toc: true
    number_sections: false
    keep_md: true
    toc_float: true
---

*[Главная](http://leonovmx.github.io/info/index.html) --- [Семестр 2](./index.html)*

*Обновлено: 18 February 2019 14:02*

# Описание

Необходимо загрузить данные, обработать, нарисовать красивые картинки и сделать подписи. 
Существует две таблицы с данными по usd и ценами на brent. 

# Загрузка данных

Данные тут:

- [USD: https://github.com/leonovmx/info/raw/gh-pages/s2/USD.csv](https://github.com/leonovmx/info/raw/gh-pages/s2/USD.csv)
- [brent: https://github.com/leonovmx/info/raw/gh-pages/s2/brent.csv](https://github.com/leonovmx/info/raw/gh-pages/s2/brent.csv)

Чтобы скачать данные, используется функцию 'r read.csv()':




```r
db <- read.csv(
  file = path, # откуда данные
  header = T,  # есть ли заголовки
  sep = ";", # разделитель столбцов
  dec = ",", # разделитель десятичной части
  stringsAsFactors = F # не конвертировать строчки в факторы
) 
```

Помните о функциях, которые позволить посмотреть, что вы загрузили и решить 
возникающие проблемы.


```r
dim(db) # размерность
```

```
## [1] 6050    3
```

```r
nrow(db) # количество строк
```

```
## [1] 6050
```

```r
ncol(db) # количество столбцов
```

```
## [1] 3
```

```r
head(db) # первые 10 строк
```

```
##   nominal       data     curs
## 1       1 01/07/1992 125,2600
## 2       1 03/07/1992 134,8000
## 3       1 08/07/1992 130,5000
## 4       1 10/07/1992 130,3000
## 5       1 15/07/1992 130,2000
## 6       1 17/07/1992 135,4000
```

```r
tail(db) # последние 10 строк
```

```
##      nominal       data    curs
## 6045       1 09/02/2019 66,0628
## 6046       1 12/02/2019 65,6517
## 6047       1 13/02/2019 65,7147
## 6048       1 14/02/2019 65,6783
## 6049       1 15/02/2019 66,5429
## 6050       1 16/02/2019 66,7044
```

```r
str(db) # структура данных 
```

```
## 'data.frame':	6050 obs. of  3 variables:
##  $ nominal: int  1 1 1 1 1 1 1 1 1 1 ...
##  $ data   : chr  "01/07/1992" "03/07/1992" "08/07/1992" "10/07/1992" ...
##  $ curs   : chr  "125,2600" "134,8000" "130,5000" "130,3000" ...
```

Главная функция `str()`, которая позволяет увидеть какой тип у ваших данных:

- num - числовой
- int - целые числа
- chr - текстовый
- logical - логический
- date - дата (не путайте слова data и date)
- может есть другой






# Дополнительно


```r
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
glimpse(db)
```

```
## Observations: 6,050
## Variables: 3
## $ nominal <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
## $ data    <chr> "01/07/1992", "03/07/1992", "08/07/1992", "10/07/1992", …
## $ curs    <chr> "125,2600", "134,8000", "130,5000", "130,3000", "130,200…
```
