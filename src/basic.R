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

# ## path

getwd()

# ## dataset

mtcars

head(mtcars)

min(mtcars$mpg)

median(mtcars$mpg)

sd(mtcars$mpg)

summary(mtcars)

# ## Dates

husbands = as.Date(c("1973-06-21", "1970-07-16", "1949-10-08", "1969-05-24"))
wifes = as.Date(c("1984-11-12", "1973-08-02", "1948-11-11", "1983-07-23"))
agegap = husbands - wifes
agegap


