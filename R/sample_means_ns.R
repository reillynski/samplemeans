#' Takes a vector and from it takes a random sample of size n (each value in ns)
#' then calculates sample mean and repeats it reps times
#'
#' @param vec A vector
#' @param reps A number indicating the number of times to repeat sample mean process
#' @param ns A vector of numbers to represent the size of the sample
#'
#' @return A data frame with two columns, one for the sample mean and one for the associated sample size.
#'
#' @import dplyr
#' @import purrr
#'
#' @export


sample_means_ns <- function(vec, reps, ns) {
  sample_means <- many_sample_means(vec, reps, ns)
  sizes <- rep(ns, times = reps)

  tb_means <- tibble(
    sample_mean = sample_means,
    n = sizes
  )
  return(tb_means)
}
