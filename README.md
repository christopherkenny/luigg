
<!-- README.md is generated from README.Rmd. Please edit that file -->

# luigg <img src="man/figures/logo.png" align="right" height="138" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/christopherkenny/luigg/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/christopherkenny/luigg/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`luigg` is to provide some silly, Mario-themed `ggplot` extensions.

## Installation

You can install the development version of luigg from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("christopherkenny/luigg")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(luigg)
## basic example code
```

Imagine you need a warp pipe bar graph. Look no further.

``` r
set.seed(1)
data.frame(x = as.character(1:4), n = 100 * runif(n = 4, 0, .5)) |>
ggplot2::ggplot(ggplot2::aes(x = x, y = n, fill = x)) +
 geom_pipe() +
 scale_fill_luigg(palette = 'warp_pipe') +
 ggplot2::theme_void()
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
