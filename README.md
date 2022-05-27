# bbknnR
Use batch balanced KNN (BBKNN) in R

## Introduction
BBKNN is a fast and intuitive batch effect removal tool for single-cell data. It is originally used in the [scanpy](https://scanpy.readthedocs.io/en/stable/) workflow, and now can be used with [Seurat](https://satijalab.org/seurat/) seamlessly.

### System requirements
`bbknnR` has been tested on R versions >= 4.1. Please consult the `DESCRIPTION` file for more details on required R packages. bbknnR has been tested on Linux platforms

To use the full features of `bbknnR`, you also need to install the [bbknn](https://bbknn.readthedocs.io/en/latest/) python package:
```
pip install bbknn
```

### Installation
Currently `bbknnR` can only be installed with github:
```
devtools::install_github("ycli1995/bbknnR")
```

### Quick start
```
library(bbknnR)
library(Seurat)
data("panc8_small")
panc8_small <- RunBBKNN(panc8_small, batch_key = "tech")
```

## Citation
Please cite this implementation R in if you use it:
```
Yuchen Li (2022). bbknnR: Use batch balanced KNN (BBKNN) in R.
package version 0.1.0 https://github.com/ycli1995/bbknnR
```

Please also cite the original publication of this algorithm.
```
Polanski, Krzysztof, et al. "BBKNN: fast batch alignment of single cell transcriptomes." Bioinformatics 36.3 (2020): 964-965.
```
