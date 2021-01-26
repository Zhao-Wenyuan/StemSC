# StemSC
An individual human stemness index for single-cell samples

# Install
To install the StemSC, install from github using devtools
```
library(devtools)
install_github("Zhao-Wenyuan/StemSC")
```
Or you can download the .ZIP file and and unzip it.
```
install.packages("StemSC",repos = NULL,type="source")
#The "StemSC" should be combined with the absolute path.
```
# Usage
```
library(StemSC)
data(example)
stemness=StemSC(Exp)
```
The example is the gene expression values (RPKM) of embryonic stem cells from dataset GSE85066.
# Data input
Exp, a dataframe with gene expression values (RPKM) where columns are cells and rows are Entrez gene IDs.The within-sample standardization does not change the results, such as TPM and log transformation. 

# Contact email
Please don't hesitate to address comments/questions/suggestions regarding this R package to:
zhaowenyuan@ems.hrbmu.edu.cn
