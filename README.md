
<!-- README.md is generated from README.Rmd. Please edit that file -->

# njmbase

<!-- badges: start -->
<!-- badges: end -->

The goal of njmbase is writing some personal use functions without any
dependencies. Ideally, these can be loaded onto an empty R session and
immediately work without any other packages needed.

## Installation

You can install the development version of njmbase from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("nathaniel-morgan/njmbase")
```

## Example

Race allows you to find the difference in run time in second between two
processes. If the first process is faster the difference in time will be
negative.

``` r
library(njmbase)
race(rnorm(1e5),rnorm(1e7))
#> [1] -0.699
race(rnorm(1e7),rnorm(1e5),simple = FALSE)
#> $difference
#> [1] 0.637
#> 
#> $time_a
#> [1] 0.643
#> 
#> $time_b
#> [1] 0.006
```

We can see that drawing more random numbers from rnorm takes more time.
