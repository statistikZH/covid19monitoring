#rbind

source("./function.R")

file.copy("ValidationData.csv", "../covid19socialmonitoring.csv", overwrite = TRUE)

file.copy("ValidationMetadata.csv", "../Metadata.csv", overwrite = TRUE)