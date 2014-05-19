add <- function(a,b) {
  a + b
}

colmean <- function(y){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i])
  }
  means
}

cube <- function (x,n) {
    x^3
}

x <- 1:10
if (x > 5){
    x <- 0
}

f <- function(x){
    g <- function(y) {
        y + z
    }
    z <- 4
    x + g(x)
}

l <- list(1,4,7)
x <- 5
y <- if(x < 3){
    NA
} else {
    10
}