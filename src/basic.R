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

matrix(1:6, nrow=2, ncol=3, byrow=F)

m = matrix(c(3:14), nrow=4, byrow=TRUE)
m

rownames(m) = c('row1','row2','row3','row4')
colnames(m) = c('col1', 'col2', 'col3')
m



diag(m)

t(m)

det(matrix(c(1:4),nrow=2,ncol = 2))

m*m

m%*%t(m)

# ## DataFrame 

x = c(42, 7, 64,9)
y = 1:4
z.df = data.frame(index=y,value=x)
z.df



z.df[1,2] = 5
z.df

z.df$col3 = z.df$index + 3
z.df

new_row = c(1,2,3)
rbind(z.df,new_row)

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

# ## TODO

attach(Puromycin)

head(Puromycin)

puroA = Puromycin[Puromycin$stated == 'treated']
puroA

Puromycin[,c("rate","state")]

# ## plot

plot(rate ~ conc, data=puroA)
abline(lm(rate ~ conc, data=puroA),col='red')
abline(a=100,b=105,col='black')
abline(h=200,col='red')
abline(v=0.6, col='green')

par(mfrow=c(2,2)) 
plot(rate ~ conc,data=puroA,pch=2,concl=4,cex=2.5,
     xlim=c(0,1.2), ylim=c(40,210),
     ylab="Concentration", xlab="Rate",
     cex.main=10)
title(main="Puromycin",cex.lab=1.2)

# ## if-else

x = -5
ifelse(x >= 0, sqrt(x), x*x)

if(x>=0){
    sqrt(x)
}else{
    x*x
}

# ## while

for(i in 1:5)
    print(1:i)

while(i<)
