#'@title Plotting One-Way ANOVA
#'
#'@description
#'Boxplots the One-Way ANOVA results
#'
#'@param x an object of class oneway
#'
#'@param col color of each box
#'
#'@param ... optional arguments: See \code{plot}.
#'
#'@return boxplot of One-Way ANOVA
#'
#'@details
#'The \code{lm} and \code{aggregate} is used to fit linear models
#'and obtain \code{length}, \code{mean}, and \code{sd}, respectively.
#'
#'@export
#'
#'@examples
#'\dontrun{
#'
#'plot(mydataframe, col="blue")
#'
#'}
#'
#'
plot.oneway <- function(x, col="skyblue", ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  boxplot(x$anova$terms, x$anova$model, ...)
}
