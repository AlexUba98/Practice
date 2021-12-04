library(tidyverse)
## Did you know R has actually lots of built-in datasets that we can use to practise? 
## For example, the rivers data “gives the lengths (in miles) of 141 “major” rivers in 
## North America, as compiled by the US Geological Survey” (you can find this description, and 
## additonal information, if you enter help(rivers) in R. Also, for an overview of all built-in 
## datasets, enter data().

## Have a look at the rivers data by simply entering rivers at the R prompt. 
## Create a vector v with 7 elements, containing the number of elements (length) in rivers, 
## their sum (sum), mean (mean), median (median), variance (var), standard deviation (sd), 
## minimum (min) and maximum (max).

View(rivers)

v <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), 
       sd(rivers), min(rivers), max(rivers))   
v

## For many functions, we can tweak their result through additional arguments. 
## For example, the mean function accepts a trim argument, which trims a fraction of 
## observations from both the low and high end of the vector the function is applied to.

## What is the result of mean(c(-100, 0, 1, 2, 3, 6, 50, 73), trim=0.25)? Don’t use R, 
## but try to infer the result from the explanation of the trim argument I just gave. 
## Then check your answer with R.

?mean
## I would estimate infer that the result is 10, given that 0.25*8=2, so we remove 2 observations
## from each side before calculating the mean

mean(c(-100, 0, 1, 2, 3, 6, 50, 73), trim = 0.25)

## Some functions accept multiple vectors as inputs. For example, the cor function accepts 
## two vectors and returns their correlation coefficient. The women data “gives the average 
## heights and weights for American women aged 30-39”. It contains two vectors height and 
## weight, which we access after entering attach(women) (we’ll discuss the details of attach 
## in a later chapter).

## Using the cor function, show that the average height and weight of these women are almost 
## perfectly correlated.

women %>%
  cor()

## Calculate their covariance, using the cov function.
women %>%
  cov()

## The cor function accepts a third argument method which allows for three distinct methods 
## (“pearson”, “kendall”, “spearman”) to calculate the correlation. Repeat part (a) of this 
## exercise for each of these methods. Which is the method chosen by the default (i.e. without
## specifying the method explicitly?)

women %>%
  cor(method = "pearson")

women %>%
  cor(method = "kendall")

women %>%
  cor(method = "spearman")

## The default method is the 'pearson'.

## In the previous three exercises, we practised functions that accept one or more vectors 
## of any length as input, but return a single value as output. We’re now returning to 
## functions that return a vector of the same length as their input vector. Specifically, 
## we’ll practise rounding functions. R has several functions for rounding. Let’s start with 
## floor, ceiling, and trunc:

## floor(x) rounds to the largest integer not greater than x
## ceiling(x) rounds to the smallest integer not less than x
## trunc(x) returns the integer part of x

## To appreciate the difference between the three, I suggest you first play around a bit in 
## R with them. Just pick any number (with or without a decimal point, positive and negative 
## values), and see the result each of these functions gives you. Then make it somewwat closer
## to the next integer (either above or below), or flip the sign, and see what happens. Then 
## continue with the following exercise:

floor(34.452)
ceiling(2.942)
trunc(4.120)

## Below you will find a series of arguments (x), and results (y), that can be obtained by 
## choosing one or more of the 3 functions above (e.g. y <- floor(x)). Which of the above 3 
## functions could have been used in each case? First, choose your answer without using R, 
## then check with R.

x <- c(300.99, 1.6, 583, 42.10)
y <- c(300, 1, 583, 42)
## floor

a <- c(152.34, 1940.63, 1.0001, -2.4, sqrt(26))
b <- c(152, 1940, 1, 5, -2)
##  trunc

e <- -c(3.2, 444.35, 1/9, 100)
d <- c(-3, -444, 0, -100)
## ceiling

f <- c(35.6, 670, -5.4, 3^3)
g <- c(36, 670, -5, 27)
## floor
