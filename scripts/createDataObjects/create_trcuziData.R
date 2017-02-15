library(Biobase)
# Building ExpressionSet for T.cruzi data

#---------------- Step 1: Make assay data (ie. count matrix) -------------#
# Load dataset
fl1 <- "HPGL0062-258_esmer_oneloci_Tophat2.0.8.counttable"
exprs <- as.matrix(read.table(paste("./data/", fl1, sep="")))

# Filter HTSeq annotation and keep exons only
table(sapply(strsplit(rownames(exprs), "_"), "[[", 1))
exprs <- exprs[grep(pattern="exon", rownames(exprs)), ]
dim(exprs)
# [1] 10601    25

#---------------- Step 2: Make phenotypic data  ---------------------#
fl2 <- "./data/des_tcruzi"
pData <- read.table(fl2, sep=",", header=TRUE, stringsAsFactors=FALSE)
rownames(pData) <- pData$id
colnames(pData) <- c("sample_id", "stage")
pData$stage <- gsub("[0-9]$", "", pData$stage)

# Add batch info (ask yuan for defn of batch)
pData$batch <- c(c("A", "B", "C"), # 4hrs
                 c("A", "B", "C"), # 6hrs
                 c("A", "B"), # 12hrs
                 c("A", "B", "C"), # 24hrs
                 c("D", "D", "A", "C"), # 48hrs
                 c("D", "D", "E"), # 72hrs
                 c("C", "E", "E", "E"), # trypo
                 c("E", "E", "E")) # epi

# Make factor indicating extracellular samples
pData$extracellular <- substr(pData$stage, 1, 3) %in% c("try", "epi")

all(rownames(pData)==colnames(exprs))


#------------------ Step 3: Make ExpressionSet --------------------#
tcruzi.eset <- ExpressionSet(assayData=exprs, 
                             phenoData=new("AnnotatedDataFrame", data=pData))

save(tcruzi.eset,
     file="tcruzi_eset.rda")
