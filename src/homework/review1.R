# -*- coding: utf-8 -*-
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

# # 复习题

# ## 什么是卡方检验

# 当自变量$X$和因变量$Y$均为分类特征(即等级资料)时,
# 可以通过统计频次($Y$为某一值得次数)
# 或者频率计算用特征$X$分组后不同组间的差别是否具有统计学意义，
# 判断特征值$X$的重要性，
# 这种检验称为卡方检验。
# 卡方检验是非参数检验方法，
# 对资料没有特殊要求，
# 尤其适用于样本量较小的情况。

# ## 喝牛奶与感冒的相关性
# 写$H_0$,$H_1$

# -   $H_0$: 喝牛奶与感冒无相关关系
#
# -   $H_1$: 喝牛奶与感冒有相关关系
#
# [reference](https://www.bioinfo-scrounger.com/archives/603/)

# ## 判断5种品牌啤酒的爱好者有无显著差异，写出代码
# | 喜欢的牌子 | A   | B   | C   | D   | E   |
# |:---------- |:--- | --- | --- | --- | --- |
# | 人数$X$    | 210 | 312 | 170 | 85  | 223 | 

people = c(210,312,170,85,223)
bands = c(0,1,2,3,4)
cor.test(people,bands)

# `p-value = 0.5225` 接受原假设，即5种品牌爱好者有显著性差异

# ## 使用ForestData数据，绘制森林地区各月份温度的箱线图

forest = read.table("ForestData.txt",header=TRUE)
forest

boxplot(forest$temp)

# ## 使用ForestData数据，绘制各月份温度的直方图和带正态分布曲线的直方图，核密度图

# hist(forest$temp) # 好像必须加参数 freq = FALSE， 我也不知道为什么 
hist(forest$temp,freq = FALSE)
temp_mean = mean(forest$temp)
temp_std = sd(forest$temp)
x = seq(from=min(forest$temp),to=max(forest$temp),length.out=length(forest$temp))
curve(dnorm(x,temp_mean,temp_std),add=TRUE)
# curve(dnorm(),add=TRUE)

# ## 使用ReportCard数据，得到avScore的频数图，并画出其直方图

rc = read.table('ReportCard.txt',header=TRUE)
rc

barplot(table(rc$avScore))

hist(table(rc$avScore))

# ## 使用ForestData，做出RH和Temp的散点图，并在图上添加线性拟合线

plot(forest$RH,forest$Temp)

lm(forest$RH ~ forest$temp)

plot(forest$RH,forest$Temp)
abline(lm(forest$RH ~ forest$temp))

cor.test(forest$RH, forest$temp)

# 直线这么离谱是因为一开始没有拒绝原假设吧

# ## 使用ForestData，做出temp，RH和wind的矩阵散点图，即直观显示多对数值型变量的相关性

forest[5:7]

pairs(forest[5:7])


