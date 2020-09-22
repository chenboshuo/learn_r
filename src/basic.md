---
jupyter:
  jupytext:
    formats: ipynb,R:light,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.2'
      jupytext_version: 1.3.3
  kernelspec:
    display_name: R
    language: R
    name: ir
---

# basic

```R
mode(12)
```

```R
mode(c(1:5))
```

```R
length(5)
```

```R
length(c(3:5))
```

## Using mirrors

```R
options("repos")
```

```R
options(repos="https://mirrors.tuna.tsinghua.edu.cn/CRAN/")
```

```R
options("repos")
```

## dataframe

```R
metallicaNames = c("Lars", "James", "Kirk", "Rob")
metallicaAges = c(47,47,48,46)
```

```R
metallica <- data.frame(Name = metallicaNames, Age=metallicaAges)
metallica
```

```R
metallica$Age
```

```R
metallica$childAge = c(12,12,4,6)
metallica
```

```R
names(metallica)
```

## matrix

```R
matrix(0,2,5)
```

```R
m = matrix(c(3:14), nrow=4, byrow=TRUE)
m
```

```R
rownames = c('row1','row2','row3','row4')
colnames = c('col1', 'col2', 'col3')
```

## path

```R
getwd()
```

## vector 

```R
vector1 = c(1,3,5,7,9)
vector1
```

```R
vector2 = rep(1,5)
vector2
```

```R
vector3 = seq(1,9,by=2)
vector3
```

```R
vector4 = seq(1,5,length=10)
vector4
```

```R
v = seq(1,5)
v
```

```R
v[1:3]
```

```R
-c(1,2)
```

```R
v[-c(1,2)]
```

```R

```

## factor 

```R
factor(c(1,1,2,3,5,8))
```

## dataset

```R
mtcars
```

```R
head(mtcars)
```

```R
min(mtcars$mpg)
```

```R
median(mtcars$mpg)
```

```R
sd(mtcars$mpg)
```

```R
summary(mtcars)
```

```R
rowSums(mtcars)
```

```R
colSums(mtcars)
```

```R
apply(mtcars,1,mean)
```

```R
?apply
```

## Dates

```R
husbands = as.Date(c("1973-06-21", "1970-07-16", "1949-10-08", "1969-05-24"))
wifes = as.Date(c("1984-11-12", "1973-08-02", "1948-11-11", "1983-07-23"))
agegap = husbands - wifes
agegap
```

## apply()

```R
# ?apply()
```

```R
x = cbind(x1=3, x2=c(4:1, 2:5))
x
```

```R
apply(x,2,mean)
```

```R
apply(x,1,mean)
```

```R
?lapply()
```

```R
lapply(x,sqrt)
```

```R
?rapply()
```

```R
?mode()
```

```R
?class()
```

## list

```R
l = list(1,"123",c(1,2,3))
l
```

```R
t = l[3]
t
```

```R
mode(t)
```

```R
t = unlist(t)
t
```

```R
mode(t)
```

```R
t[1]
```

```R
l[[3]]
```

```R
l[[3]][1]
```

```R
unlists = unlist(l)
unlists
```

```R
?paste()
```

```R
?gsub()
```
