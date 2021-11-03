#'@title One-Way ANOVA Test
#'
#' @description
#'This oneway function performs a one-way analysis of variance
#'for two or more numeric variables.
#'
#' @param formula an object of class "formula" (i.e, y ~ model).
#' See \code{formula} for more details.
#'
#' @param data presented as class object \code{data.frame}
#'
#' @return an object of class "oneway"
#'
#' @export
#'
#' @details
#'This function uses \code{lm} to describe the linear relationship between two groups and \code{aggregate}
#'is used to obtain \code{length}, \code{mean}, and \code{sd} for one-way ANOVA test.
#'
#'@importFrom stats aggregate lm na.omit sd
#'
#'@examples
#'\dontrun{
#'
#' #perform one-way ANOVA
#'
#' mydataframe <- oneway(mpg ~ wt, mtcars)
#'
#' #perform one-way ANOVA with more than two groups
#'
#' mydataframe <- oneway(mpg ~ wt + hp + disp + qsec)
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
