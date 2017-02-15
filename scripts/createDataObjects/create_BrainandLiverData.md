This Rmarkdown file contains the code to download the brain and liver microarray data. The first step is to download the raw CEL files from GEO for each of the following data sets. 

Name of data set | GEO accession ID
--- | --- 
`brainLiverAffyData` | GSE17612, GSE21935, GSE14668, GSE29721, GSE38941

Once the raw CEL files have been downloaded, read them using `ReadAffy()` from the `affy` R/Bioconductor package and create an `AffyBatch` object. Extract the Perfect Match values using the `pm()` function and call the object `pmMat`. Extract the phenoData object and call it `pd` with a column titled `Group` containing the tissue status for each sample.