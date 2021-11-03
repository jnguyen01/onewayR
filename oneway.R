#'@title One-Way ANOVA Test
#'
#'@description
#'This oneway function performs a one-way analysis of variance
#'for two or more numeric variables.
#'
#'@param formula an object of class "formula" (i.e, y ~ model).
#'Use "+" symbol to denote more than one numeric variable.
#'@param data data is presented as data.frame
#'
#'@return an object of class "oneway"
#'
#'@details
#'This function uses both \code{lm} and \code{aggregate} to fit linear models
#'and obtain \code{length}, \code{mean}, and \code{sd}, respectively.
#'
#'@export
#'
#'@examples
#'\dontrun {
#'
#'#perform one-way ANOVA
#'
#'mydataframe <- oneway(mpg ~ wt, mtcars)
#'
#'
#'}
#'

oneway <- function(formula, data) {

  # listwise deletion of missing values
  data_complete <- na.omit(data)

  # anova
  fit <- lm(formula, data_complete)

  stats <-  aggregate(formula,
                     data,
                     function(x) c(n = length(x), mean = mean(x), sd = sd(x)))


  result <- list(anova = fit, summarystats = stats)
  class(result) <- c("oneway", "list")
  return(result)

}
