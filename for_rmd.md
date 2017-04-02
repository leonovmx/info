# Различные штуки для RMD
LM  

*[Главная](http://leonovmx.github.io/info/index.html) --- [Семестр 2](./index.html)*

*Обновлено: 02 апреля 2017 13:04*

# Table options

Several packages support making beautiful tables with R, such as

* [xtable](https://cran.r-project.org/web/packages/xtable/)
* [stargazer](https://cran.r-project.org/web/packages/stargazer/)
* [pander](http://rapporter.github.io/pander/)
* [tables](https://cran.r-project.org/web/packages/tables/)
* [ascii](http://eusebe.github.io/ascii/)
* etc.

It is also very easy to make tables with knitr's `kable` function:


Table: A knitr kable.

                      mpg   cyl   disp    hp   drat      wt    qsec   vs   am   gear   carb
------------------  -----  ----  -----  ----  -----  ------  ------  ---  ---  -----  -----
Mazda RX4            21.0     6    160   110   3.90   2.620   16.46    0    1      4      4
Mazda RX4 Wag        21.0     6    160   110   3.90   2.875   17.02    0    1      4      4
Datsun 710           22.8     4    108    93   3.85   2.320   18.61    1    1      4      1
Hornet 4 Drive       21.4     6    258   110   3.08   3.215   19.44    1    0      3      1
Hornet Sportabout    18.7     8    360   175   3.15   3.440   17.02    0    0      3      2
