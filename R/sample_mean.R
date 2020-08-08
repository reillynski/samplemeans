#' Takes a vector and from it takes a random sample of size n, then calculates sample mean
#'
#' @param vec A vector
#' @param n A number to represent the size of the sample
#'
#' @return A vector containing the sample mean.
#'
#' @import dplyr
#' @import purrr
#'
#' @export


sample_mean <- function(vec, n) {
  rsample <- map(n, ~sample(vec, .x, replace=TRUE))
  rsample_mean = map(rsample, ~mean(.x))
  sample_mean_vec = unlist(rsample_mean)

  return(sample_mean_vec)
}
