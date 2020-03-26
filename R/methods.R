
#' Get the RNA-seq counts from Schurch et al. (2016)
#'
#' The data contains bulk RNA-seq count on 86 samples in two conditions.
#' The first condition is wild type S. *cerevisiae* (taxonomic id: 1247190).
#' The second condition is the same strain with a snf2 knockout.
#'
#' @param hub an [ExperimentHub] object that is used
#'   to load the resource "EH3299".
#'   Default: [ExperimentHub()]
#'
#'
#' @details
#'   Schurch et al. originally generated this dataset to benchmark
#'   RNA-seq differential expression tools and find out how many
#'   replicates are necessary to detect most differentially
#'   expressed genes. The data that is returned by this packge
#'   comes from the GitHub  [repository](https://github.com/bartongroup/profDGE48)
#'   that accompanied the study.
#'
#' @return
#' \describe{
#'   \item{`Schurch16()`}{returns a [SummarizedExperiment] with 7126 genes
#'   and 86 samples.}
#'   \item{`Schurch16_metadata()`}{returns a [ExperimentHub] object with the
#'   metadata on the Schurch16 dataset.}
#' }
#'
#'
#' @examples
#'   Schurch16_metadata()
#'
#'   se <- Schurch16()
#'
#'   dim(se)
#'   colData(se)
#'   summary(c(assay(se, "counts")))
#'
#' @author Constantin Ahlmann-Eltze
#'
#' @references
#'  Schurch, N. J., Schofield, P., Gierliński, M., Cole, C., Sherstnev, A., Singh, V., … Barton, G. J. (2016).
#'     How many biological replicates are needed in an RNA-seq experiment and which differential expression
#'     tool should you use? \emph{RNA}, 22(6), 839–851. https://doi.org/10.1261/rna.053959.115
#' @export
Schurch16 <- function(hub = ExperimentHub()){
  hub[["EH3299"]]
}

#' @rdname Schurch16
#' @export
Schurch16_metadata <- function(hub = ExperimentHub()){
  hub["EH3299"]
}


