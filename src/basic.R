# ---
# jupyter:
#   jupytext:
#     formats: ipynb,R:light,md
#     text_representation:
#       extension: .R
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.3.3
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

# # basic

mode(12)

mode(c(1:5))

length(5)

length(c(3:5))

# ## Using mirrors

options("repos")

options(repos="https://mirrors.tuna.tsinghua.edu.cn/CRAN/")

options("repos")

# ## dataframe

metallicaNames = c("Lars", "James", "Kirk", "Rob")
metallicaAges = c(47,47,48,46)

metallica <- data.frame(Name = metallicaNames, Age=metallicaAges)
metallica

metallica$Age

metallica$childAge = c(12,12,4,6)
metallica

names(metallica)

# ## matrix

matrix(0,2,5)

m = matrix(c(3:14), nrow=4, byrow=TRUE)
m

rownames = c('row1','row2','row3','row4')
colnames = c('col1', 'col2', 'col3')

# ## path

getwd()

# ## vector 

vector1 = c(1,3,5,7,9)
vector1

vector2 = rep(1,5)
vector2

vector3 = seq(1,9,by=2)
vector3

vector4 = seq(1,5,length=10)
vector4

v = seq(1,5)
v

v[1:3]

-c(1,2)

v[-c(1,2)]



# ## factor 

factor(c(1,1,2,3,5,8))

# ## dataset

mtcars

head(mtcars)

min(mtcars$mpg)

median(mtcars$mpg)

sd(mtcars$mpg)

summary(mtcars)

rowSums(mtcars)

colSums(mtcars)

apply(mtcars,1,mean)

?apply

# ## Dates

husbands = as.Date(c("1973-06-21", "1970-07-16", "1949-10-08", "1969-05-24"))
wifes = as.Date(c("1984-11-12", "1973-08-02", "1948-11-11", "1983-07-23"))
agegap = husbands - wifes
agegap

# ## apply()

# +
# ?apply()
# -

x = cbind(x1=3, x2=c(4:1, 2:5))
x

apply(x,2,mean)

apply(x,1,mean)

?lapply()

lapply(x,sqrt)

?rapply()

?mode()

?class()

# ## list

l = list(1,"123",c(1,2,3))
l

t = l[3]
t

mode(t)

t = unlist(t)
t

mode(t)

t[1]

l[[3]]

l[[3]][1]

unlists = unlist(l)
unlists

?paste()

?gsub()
