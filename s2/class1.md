# Рисование графиков. Базовое
LM  
 февраля 2015 г.  
----------------------
*[Главная](http://leonovmx.github.io/info/index.html) --- [Семестр 2](./index/html)*
*Обновлено: 05 апреля 2016*
----------------------

# Графики
## График расеивания 


```r
    n <- 1:100
    d <- rnorm(mean = 0, sd = 1, n = n)
```

Такие команды как `plot`, `hist` создают холст заново, то есть заменяя, если были старые  рисинки. В общем случае рисуется scatter plot (график рассеивания). Каждая точка обозначется кружочком.


```r
plot(x = n, y = d)
```

![](class1_files/figure-html/unnamed-chunk-2-1.png) 

## Различные типы

Если же речь идёт о временных рядах (ценах), то тут важна последовательность.
Лучше соединять точки. Для этого указать надо в параметре `type` значение
`l` или `b`. Тип `s` или `S` - это ступпеньки.


```r
plot(x = n, y = d, type = "l", main = "Type: l")
```

![](class1_files/figure-html/unnamed-chunk-3-1.png) 

```r
plot(x = n, y = d, type = "b", main = "Type: b")
```

![](class1_files/figure-html/unnamed-chunk-3-2.png) 

```r
plot(x = n, y = d, type = "s", main = "Type: s")
```

![](class1_files/figure-html/unnamed-chunk-3-3.png) 

```r
plot(x = n, y = d, type = "S", main = "Type: S")
```

![](class1_files/figure-html/unnamed-chunk-3-4.png) 

## Добавляем подписи
### Название графика

Добавлять параметры можно в функцию `plot` или отдельно, но при этом указывать
в функции `plot`, чтобы они отрисовывались.


```r
plot(x = n, y = d, type = "l", main = "Название графика")
```

![](class1_files/figure-html/unnamed-chunk-4-1.png) 


```r
plot(x = n, y = d, type = "l", main = "")
title(main = "Название графика")
```

![](class1_files/figure-html/unnamed-chunk-5-1.png) 

### Название осей


```r
plot(x = n, y = d, type = "l", main = "Название графика", xlab = "Подпись на оси Х", ylab = "Подпись на оси Y")
```

![](class1_files/figure-html/unnamed-chunk-6-1.png) 


```r
plot(x = n, y = d, type = "l", xlab = "", ylab = "")
title(main = "название графика", 
    xlab = "подпись на оси Х", 
    ylab = "Подпись на оси Y")
```

![](class1_files/figure-html/unnamed-chunk-7-1.png) 
