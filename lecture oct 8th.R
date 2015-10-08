library(gapminder)

diff(range(gapminder$lifeExp))
summary(gapminder)

max_minus_min <- function(x) max(x) - min(x)

max_minus_min(runif(100000)) #need to test where you know the answer

max_minus_min(as.character(rnorm(10)))
gapminder[c("year")]

mmm <- function(x) {
  stopifnot(is.numeric(x))
  max(x) - min(x)
}

mmm(gapminder$country)

mmm2 <- function(x){
  if(!is.numeric(x)){
    stop("I am sorry, but this function only works for numeric input. You have provided an object of class:", class(x))
  }
  max(x) - min(x)
  
}

mmm2(gapminder$country)
qdiff1 <- funciton(x, probs){
  stopifnot(is.numeric(x))
  the_quantiles <- quantile(x, probs - probs)
  max(the_quantiles) - min(the_quantiles)
}
