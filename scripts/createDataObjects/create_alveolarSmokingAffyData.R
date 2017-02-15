library(affy)
library(GEOquery)
gds <- getGEO("GSE2125")

setwd("~/Downloads/GSE2125_RAW")
rawFiles <- as.character(pData(gds[[1]])$supplementary_file)
filePath <- sapply(1:length(rawFiles), function(x){ substring(rawFiles[x], 81) })

# Read in CEL files
alveolarSmokingAffyData <- ReadAffy()

# Create phenoData
pd  <- pData(gds[[1]])
pd$Sample_Name <- sampleNames(alveolarSmokingAffyData)
pd$Group <- factor(substring(pd$characteristics_ch1, 9), levels = c("Nonsmoker", "Smoker", "Asthmatic"))
pData(alveolarSmokingAffyData) <- pd

# Save affyBatch
save(alveolarSmokingAffyData, file="alveolarSmokingAffyData.rda")
