---
title: "Семинар по пакетам"
author: "ЛМ"
date: "18 февраля 2019 г."
output: 
  html_document:
    toc: true
    number_sections: false
    keep_md: true
---
----------------------
*[Главная](http://leonovmx.github.io/info/index.html) --- [Семестр 2](./index/html)*
*Обновлено: 18 February 2019*
----------------------

# Data 


```r
db <- data.frame(
    year = rep(c(2010:2016), 4),
    cur = rep(c("RU", "USD", "EUR", "GBP"),  7),
    val = rnorm(n = 28, mean = 70, sd = 20) # случаные числа около 70
)
```


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

 # dplyr
 
 Один из асамыхх распространненых пакетов.
 Самые полезные команды:
 
 - `select()`
 - `%>%`
 - `arrange`
 - `filter`
 
 ## `%>%`
 - по сути подставляет то, что слева от знака в функцию справа на первое место
 

```r
library(dplyr)
db %>% head()
```

```
##   year cur      val
## 1 2010  RU 55.21784
## 2 2011 USD 43.00461
## 3 2012 EUR 91.76474
## 4 2013 GBP 65.25760
## 5 2014  RU 97.01198
## 6 2015 USD 32.69933
```
 
 
 # tidyr 
 
 - `gather`
 - `spread`
 
 # reshape 2
 
 - `melt`
 - `dcast`
 
 # ggplot2
 
 
 
 # data.table
  
