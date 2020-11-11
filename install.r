options(repos = structure(c(CRAN = "https://ftp.fau.de/cran/")))

install.packages("htmltools")
devtools::install_github("tylermorganwall/rayshader")


####
install.packages("BiocManager")
BiocManager::install("survminer")



####

install.packages("av")


####

library(BiocInstaller)

source("https://bioconductor.org/biocLite.R")
biocLite("scRNAseq")
####

BiocManager::install("scater")
BiocManager::install("clusterProfiler")
BiocManager::install("org.Mm.eg.db")
BiocManager::install("edgeR")


library(clusterProfiler)
library(org.Mm.eg.db)
library(edgeR)

