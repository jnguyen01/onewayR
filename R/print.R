#' @title One-Way ANOVA Print
#'
#' @description
#' Prints one-way ANOVA results
#'
#' @param x object of class oneway
#'
#' @param ... optional arguments to \code{print} methods
#'
#' @details
#'
#' Details the results of the one-way ANOVA test.
#'
#' @importFrom stats summary.lm
#'
#' @export
#'
print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n",
      "====================================================\n", sep="")
  print(x$summarystats, ...)
  cat("\nAnova\n",
      "====================================================\n", sep="")
  print(summary.lm(x$anova), ...)
}
