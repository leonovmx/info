# классы переменных и их изменение
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
as.complex(x)
is.numeric(x)
is.logical(x)
is.character(x)
# преобразование текстового значения числа в целочисленный тип
y<-"000001"
class(y)
z<-as.integer(y);z
class(z)
# проверка на значения NA и NaN
y<-10;z<-NA;x<-NaN
is.na(y);is.na(z) 
is.nan(y);is.nan(x) 
x <- c(1, 2, NA, 10, 3)
is.na(x)
!is.na(x)
# data.frame - специальный табличный вид хранения данных, где каждая строка - наблюдение,
# каждый столбец - значения факторов для данного наблюдения.
# Может содержать разный тип данных в столбцах 
# (один столбец числовой, другой - символьный и тп)
# Имеет специальный атрибут row.names (названия строк, чаще - номер наблюдения или дата)
# Также имеет атрибут names  - названия столбцов (факторы, переменные и тп)
# Создаются вручную или из матрицы (data.matrix()) 
# или из файла (read.table() или read.csv())
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))    ;x
nrow(x)
ncol(x)
names(x)
names(x)<-c('one factor','another factor')     ;x
row.names(x)<-c(1:nrow(x))+100     ;x
# элементы таблиц данных
x[2,1] # просто число
x[2,] # data.frame из 1 наблюдения
x[2:3,]
# создать data.frame из х, в котором значение 'another factor' принимает значение "Ложь"
a<-x[x[,'another factor']==F,] ;a
# создать data.frame из х, в котором значение 'one factor' принимает значение от 2 до 3
a<-x[(x[,'one factor']>=2)&(x[,'one factor']<=3),] ;a
# можно обращаться к значениям фактора по номеру или по названию столбца
x[,2]
x[,"one factor"]
# data.frame из файла
# установка рабочей директории (можно через setwd())
directory<-"specdata"
id<-"248"
path<-paste(directory,'/',id,'.csv',sep='')
data<-read.csv(path)
head(data)
tail(data)
# complete.cases() возаращает логический вектор, в котором на месте i стоит "Правда",
# если i-ое наблюдение полное, и "Ложь", если это наблюдение имеет пропуск хотя бы в 
# одном факторе
datacut<-data[complete.cases(data),]
head(datacut)
# определить количество наблюдений в data, в которых не пропущено значение сульфатов
# сначала создать логический вектор, в котором T, если наблюдение соответствует критерию
log.vector<-!is.na(data[,'sulfate']) ; head(log.vector)
# создать таблицу из всех столбцов data и только нужных строк
abc<-data[log.vector,] ; head(abc)
# узнать длину любого столбца в полученной таблице
length(abc[,1])
# или тоже самое в одно действие
length(data[!is.na(data[,'sulfate']),][,1])
# summary() возвращает сводные данные о data.frame. 
# В теле функции использовать print(summary())
summary(data)
summary(datacut)
# data.frame из матрицы
# создать матрицу (пусть сначала она пустая)
matr<-matrix(NA, nrow=5, ncol=2);matr
for (i in 1:5) {matr[i,]<-c(sample(1:100,1),i)}
matr
# преобразовать в data.frame и дать названия столбцам
matr<-data.frame(matr);matr
names(matr)<-c('nobs','id');matr
# cor() - возвращает значение корреляции между двумя векторами
x<-c(1:10)
y<-c(1:10)
z<-c(10:1)
s<-sample(1:10,10)
cor(x,y)
cor(x,z)
cor(x,s)
# order()  - сортировка строк 
asd<-cbind(complete('specdata'),corr('specdata'))
head(asd)
names(asd)[3]<-'corr'
ord<-order(-asd[,'corr']);ord
asd.sorted<-asd[ord,];head(asd.sorted)
