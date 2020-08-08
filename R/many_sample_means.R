#' Takes a vector and from it takes a random sample of size n then calculates sample
#' mean and repeats it reps times
#'
#' @param vec A vector
#' @param reps A number indicating the number of times to repeat sample mean process
#' @param n A number to represent the size of the sample
#'
#' @return A vector containing the sample means.
#'
#' @import dplyr
#' @import purrr
#'
#' @export


many_sample_means <- function(vec, reps, n) {
  sample_means <- replicate(reps, sample_mean(vec, n))
  sample_means_vec <- c(sample_means)

  return(sample_means_vec)
}
