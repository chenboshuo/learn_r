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

## path

```R
getwd()
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

## Dates

```R
husbands = as.Date(c("1973-06-21", "1970-07-16", "1949-10-08", "1969-05-24"))
wifes = as.Date(c("1984-11-12", "1973-08-02", "1948-11-11", "1983-07-23"))
agegap = husbands - wifes
agegap
```

```R

```
