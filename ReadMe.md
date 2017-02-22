This repository contains the additional material and scripts for the manuscript: 

**Smooth Quantile Normalization** authored by 

* Stephanie C. Hicks, shicks@jimmy.harvard.edu
* Kwame Okrah, kwame.okrah@gmail.com
* Joseph Paulson, jpaulson@jimmy.harvard.edu
* John Quackenbush, johnq@jimmy.harvard.edu
* Rafael A. Irizarry, rafa@jimmy.harvard.edu
* Héctor Corrada Bravo, hcorrada@gmail.com

## Data
 
All data used in this manuscript is publicly available. Here are links on how to download or access each data set: 

Gene expression (Microarrays)

* [alveolarSmokingAffyData](https://github.com/stephaniehicks/qsmoothPaper/tree/master/scripts/createDataObjects/create_alveolarSmokingAffyData.R). Gene expression of alveolar macrophages from 15 smokers, 15 nonsmokers, and 15 subjects with asthma (disease control). (GEO accession GSE2125) 
* [brain and liver tissues](https://github.com/stephaniehicks/qsmoothPaper/tree/master/scripts/createDataObjects/create_BrainandLiverData.md). Gene expression of brain and liver tissues measured on Affymetrix arrays. (GEO accession IDs provided in linked file). 
* [bladderbatch](https://www.bioconductor.org/packages/release/data/experiment/html/bladderbatch.html). R/Bioconductor data package containing gene expression data on normal and cancer bladder samples from multiple batches. 


Gene expression (RNA-Seq)

* [T. Cruzi data](https://github.com/stephaniehicks/qsmoothPaper/tree/master/scripts/createDataObjects/create_trcuziData.R). Gene expression from RNA-Seq samples comparing the T. cruzi life cycle at the epimastigote stage and extracellular trypomastigotes. 
* [bodymapRat](https://github.com/stephaniehicks/bodymapRat). R data package available on GitHub that contains an ExpressionSet from the Yu et al. (2014) paper that performed the rat BodyMap across 11 organs and 4 developmental stages. (GEO accession GSE53960). A description on the mapping and creating of the ExpressionSet object is available in the supplemental material. 
* [GTEx data](https://www.dropbox.com/sh/qs3dx36bbvcpufm/AADooxO7x0A89T6gGeH6oXvGa?dl=0). Helper files available on Dropbox that allow you to download and process GTEx data. 


DNA Methylation 

* [FlowSorted.Blood.450k](https://bioconductor.org/packages/release/data/experiment/html/FlowSorted.Blood.450k.html). R/Bioconductor data package containing Illumina HumanMethylation data on sorted blood cell populations. 


## Figures

Here are links to the code, helper files and data analyses for all figures in the manuscript and supplement. 

* [Figures in the manuscript](https://github.com/stephaniehicks/qsmoothPaper/blob/master/scripts/manuscriptFigures.Rmd). We note that the code, helper files and data analyses for [Figures 3 and 4 using GTEx data](https://www.dropbox.com/sh/qs3dx36bbvcpufm/AADooxO7x0A89T6gGeH6oXvGa?dl=0) are linked to files on Dropbox and provided in the R Markdown here. 
* [Figures in the supplemental material](https://github.com/stephaniehicks/qsmoothPaper/blob/master/scripts/supplementalFigures.Rmd)
	* [Figures for simulation study](https://github.com/stephaniehicks/qsmoothPaper/blob/master/scripts/simulationStudies/biasVarianceTradeoff.Rmd)

