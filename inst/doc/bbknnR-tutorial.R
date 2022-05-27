## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(bbknnR)
library(Seurat)
library(dplyr)
library(patchwork)
data("panc8_small")

## ----runbbknn-----------------------------------------------------------------
panc8_small <- RunBBKNN(panc8_small, batch_key = "tech")

## ----clustering---------------------------------------------------------------
panc8_small <- FindClusters(panc8_small, graph.name = "bbknn")

## ----umap, fig.width=5, fig.height=10-----------------------------------------
p1 <- DimPlot(panc8_small, reduction = "umap", group.by = "celltype", label = TRUE,
             label.size = 3 , repel = TRUE) + NoLegend()
p2 <- DimPlot(panc8_small, reduction = "umap", group.by = "tech")
p3 <- DimPlot(panc8_small, reduction = "umap")

wrap_plots(list(p1, p2, p3), ncol = 1)

## ----tsne, fig.width=5, fig.height=10-----------------------------------------
p1 <- DimPlot(panc8_small, reduction = "tsne", group.by = "celltype", label = TRUE,
             label.size = 3 , repel = TRUE) + NoLegend()
p2 <- DimPlot(panc8_small, reduction = "tsne", group.by = "tech")
p3 <- DimPlot(panc8_small, reduction = "tsne")

wrap_plots(list(p1, p2, p3), ncol = 1)

