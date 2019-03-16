---
title: "Задача 5. Счастливые билетики"
author: "Maxim Leonov"
output: 
  html_document:
    toc: true
    number_sections: false
    keep_md: true
    toc_float: true
---

*[Главная](http://leonovmx.github.io/info/index.html) --- [Семестр 2](./index.html)*

*Обновлено: 16 March 2019 17:03*

# Задача

Необходимо взять и оптимизировать следующий алгоритм


```r
# Количетсво счастливых билетиков
k <- 0

# Количество интераций
n <- 0

for(i1 in 0:9){
    for(i2 in 0:9){
        for(i3 in 0:9){
            for(i4 in 0:9){
                for(i5 in 0:9){
                    for(i6 in 0:9){
                        n <- n + 1
                        if(i1 + i2 + i3 == i4 + i5 + i6){
                            k <- k + 1
                        }
                    }
                }   
            }   
        }
    }
}


cat("Количество рассмотренных комбинаций ", n, "\n")
```

```
## Количество рассмотренных комбинаций  1e+06
```

```r
cat("Количество билетов ", k)
```

```
## Количество билетов  55252
```
