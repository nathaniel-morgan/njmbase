#' Race two functions
#'
#' @param a A process you want to compare the run time with process b
#' @param b The process to compare the run time against process a
#' @param simple whether to return just the difference, or a list including the individual times
#'
#' @return a length 1 double of the difference in seconds process a took compared to process b.
#' @export
#'
#' @examples
#' race(rnorm(1e5),rnorm(1e7))
#' race(rnorm(1e7),rnorm(1e5),simple=FALSE)
race <- function(a,b,simple=TRUE) {
  if (simple){
    system.time(a)[[3]]-system.time(b)[[3]]
  }
  else {
    a_time <- system.time(a)[[3]]
    b_time <- system.time(b)[[3]]
    list(difference=a_time-b_time,
         time_a=a_time,
         time_b=b_time)
  }
}
