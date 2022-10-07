race <- function(a,b) {
  system.time(a)[[3]]-system.time(b)[[3]]
}
