#' @title Plotting One-Way ANOVA Results
#'
#' @description
#' Produces box plots of the One-Way ANOVA results
#'
#' @param x an object of class oneway
#'
#' @param col color of each box
#'
#' @param ... optional arguments: See \code{boxplot} for more details.
#'
#' @export
#'
#' @importFrom graphics boxplot
#'
#' @examples
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
