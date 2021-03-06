# This script creates the ../extdata/metadata.csv file
# It follows the guidelines from https://bioconductor.org/packages/devel/bioc/vignettes/ExperimentHub/inst/doc/CreateAnExperimentHubPackage.html
# and `?ExperimentHubData::makeExperimentHubMetadata`
write.csv(file="../extdata/metadata-schurch.csv",
  data.frame(
    Title = paste0("Schurch S. cerevesiae Highly Replicated Bulk RNA-Seq ", c("Counts", "Column Data")),
    Description = paste0(c("Count matrix", "Per sample metadata"),
      " for bulk RNA-sequencing dataset from 86 S. cerevisiae samples ",
      "in two conditions. The data was originally produced to benchmark the performance of ",
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
    RDataClass = c("matrix", "data.frame"),
    DispatchClass = "Rds",
    RDataPath = c("HighlyReplicatedRNASeq/schurch/count_matrix.rds",
                  "HighlyReplicatedRNASeq/schurch/column_data.rds"),

    stringsAsFactors = FALSE
  ), row.names = FALSE)



