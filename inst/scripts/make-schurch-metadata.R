# This script creates the ../extdata/metadata.csv file
# It follows the guidelines from https://bioconductor.org/packages/devel/bioc/vignettes/ExperimentHub/inst/doc/CreateAnExperimentHubPackage.html
# and `?ExperimentHubData::makeExperimentHubMetadata`
write.csv(file="../extdata/metadata-schurch.csv",
  data.frame(
    Title = "Schurch S. cerevesiae Highly Replicated Bulk RNA-Seq",
    Description = paste0(
      "This dataset contains bulk RNA-sequencing data from 86 S. cerevisiae samples ",
      "in two conditions. It was originally done to benchmark the performance of ",
      "tools for differnential expression analysis. It comes from the paper by ",
      "Schurch et al. (2016). The first condition is the wild type. The ",
      "second condition is a Snf2 knockout cell line."
    ),
    BiocVersion = "3.11",
    Genome = "Ensembl release 68",
    SourceType =  "tar.gz",
    SourceUrl = "https://github.com/bartongroup/profDGE48",
    SourceVersion = "375dc0d57d9d1fa96a4245a6530e0fda34305891",
    Species = "Saccharomyces cerevisiae BY4741",
    TaxonomyId = 1247190,
    Coordinate_1_based = NA,
    DataProvider = "Geoff Barton's group on GitHub",
    Maintainer = "Constantin Ahlmann-Eltze <artjom31415@googlemail.com>",
    RDataClass = "SummarizedExperiment",
    DispatchClass = "Rds",
    RDataPath = "HighlyReplicatedRNASeq/",

    stringsAsFactors = FALSE
  ), row.names = FALSE)



