
#' Get the RNA-seq counts from Schurch et al. (2016)
#'
#' @param hub a
#'
#'
#' @author Constantin Ahlmann-Eltze
#'
#' @references
#'  Schurch, N. J., Schofield, P., Gierliński, M., Cole, C., Sherstnev, A., Singh, V., … Barton, G. J. (2016).
#'     How many biological replicates are needed in an RNA-seq experiment and which differential expression
#'     tool should you use? Rna, 22(6), 839–851. https://doi.org/10.1261/rna.053959.115
#' @export
Schurch16 <- function(hub = ExperimentHub()){
  hub[["EH3299"]]
}

#' @rdname Schurch16
#' @export
Schurch16_metadata <- function(hub = ExperimentHub()){
  hub["EH3299"]
}


