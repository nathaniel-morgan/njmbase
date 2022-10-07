#' Race two functions
#'
#' @param a A process you want to compare the run time with process b
#' @param b The process to compare the run time against process a
#'
#' @return a length 1 double of the difference in seconds process a took compared to process b.
#' @export
#'
#' @examples
#' race(rnorm(1e5),rnorm(1e7))
#' race(rnorm(1e7),rnorm(1e5))
race <- function(a,b) {
  system.time(a)[[3]]-system.time(b)[[3]]
}
