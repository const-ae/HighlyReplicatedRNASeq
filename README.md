
<!-- README.md is generated from README.Rmd. Please edit that file -->

# HighlyReplicatedRNASeq

<!-- badges: start -->

<!-- badges: end -->

> Collection of Bulk RNA-Seq Experiments With Many Replicates

The HighlyReplicatedRNASeq package provides access to the count matrix
results from studies with many replicates. These datasets can be
valuable for benchmarking tools designed to handle RNA-seq data.

## Installation

You can install the latest version of
*[HighlyReplicatedRNASeq](https://bioconductor.org/packages/3.11/HighlyReplicatedRNASeq)*
with

``` r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("HighlyReplicatedRNASeq")
```

To get the latest development version, install the package from
[Github](https://github.com/const-ae/HighlyReplicatedRNASeq)

``` r
# install.packages("devtools")
devtools::install_github("const-ae/HighlyReplicatedRNASeq")
```

## Datasets

  - Schurch et al. (2016): 86 samples of S. *cerevisiae* in two
    conditions
      - `Schurch16()` / `Schurch16_metadata()`

At the moment, this package contains only one dataset, but more datasets
can be added in the future.

## Example

Load the `Schurch16` dataset by calling the corresponding function. The
first time you run this command, it will download the dataset and will
subsequently cache it in a directory that is by
`getExperimentHubOption("CACHE")`.

``` r
schurch_se <- HighlyReplicatedRNASeq::Schurch16()
#> snapshotDate(): 2020-03-24
#> see ?HighlyReplicatedRNASeq and browseVignettes('HighlyReplicatedRNASeq') for documentation
#> loading from cache
schurch_se
#> class: SummarizedExperiment 
#> dim: 7126 86 
#> metadata(0):
#> assays(1): counts
#> rownames(7126): 15S_rRNA 21S_rRNA ... tY(GUA)O tY(GUA)Q
#> rowData names(0):
#> colnames(86): wildtype_01 wildtype_02 ... knockout_47 knockout_48
#> colData names(4): file_name condition replicate name
```

## References

Schurch, N. J., Schofield, P., Gierliński, M., Cole, C., Sherstnev, A.,
Singh, V., … Barton, G. J. (2016). How many biological replicates are
needed in an RNA-seq experiment and which differential expression tool
should you use? , 22(6), 839–851.
<https://doi.org/10.1261/rna.053959.115>
