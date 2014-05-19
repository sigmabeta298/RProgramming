library(datasets)
data(iris)
#what is the mean of 'Sepal.Length' for the species virginica?
tmp <- sapply(split(iris[1], iris$Species)$virginica, mean)
tmp

#How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
data(mtcars)
#tmp1 <- sapply(split(mtcars$mpg, mtcars$cyl), mean)
tmp1 <- tapply(mtcars$mpg, mtcars$cyl, mean)
tmp1

#what9 is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
tmp2 <- sapply(split(mtcars$hp, mtcars$cyl), mean)
tmp3 <- abs(tmp2[1] - tmp2[3])
tmp3
