#' @title Summarize One-Way Anova
#'
#' @description
#'This summary.oneway function takes object of class oneway and prints out
#'the results of the statistical test.
#'
#' @param x an object of class oneway
#'
#' @param ... optional arguments for the function: See \code{summary}.
#'
#' @export
#'
#' @importFrom stats anova
#' @examples
#'\dontrun{
#'
#'summary.oneway(mydataframe)
#'
#'}
#'
#'


summary.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("x must  be class 'oneway'")
  print(anova(x$anova), ...)
}
