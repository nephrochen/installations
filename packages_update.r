getwd()
require(installr)
updateR()
#删除R 删除Rstudio 重新安装，
biocLite()#找需要升级的包
source("https://bioconductor.org/biocLite.R")
library(BiocInstaller)
for(i in bao){remove.packages(i);install.packages(i);biocLite(i,suppressUpdates=TRUE)}

installed.packages()[,"Package"]
write.csv(installed.packages()[,"Package"],"package.csv")




#----------2018
pkgs<-rownames(installed.packages())
pkgs <- as.data.frame(pkgs)
write.csv(pkgs,"packages.csv")
#----------2018


pkgs.in <- read.csv("package_20191005.csv")
source("https://bioconductor.org/biocLite.R")
library(BiocInstaller)

for (i in pkgs.in[, 2]) {
tryCatch({
            install.packages(i)
         }, warning = function(w) {
             biocLite(i, suppressUpdates = TRUE)
         }, error = function(e) {
             try(biocLite(i, suppressUpdates = TRUE))
         }, finally = {
  
 })   
}
#----------2019

#----------2018

install.packages("BiocManager")

pkgs.in <- read.csv("package_20191005.csv")
source("https://bioconductor.org/biocLite.R")
library(BiocInstaller)

for (i in pkgs.in[, 2]) {
    tryCatch({
        install.packages(i)
    }, warning = function(w) {
        BiocManager::install(i, update = FALSE, ask = FALSE)
    }, error = function(e) {
        try(BiocManager::install(i, update = FALSE, ask = FALSE))
    }, finally = {
    })
}



BiocManager::install(i, update = TRUE, ask = FALSE)







