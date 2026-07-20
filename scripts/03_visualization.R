# ============================================================
# Script: 03_visualization.R
# Project: scRNAseq-QC-Pipeline
# Purpose: Generate QC visualizations
# ============================================================


library(Seurat)
library(ggplot2)


# Load QC object

seurat_obj <- readRDS(
  "results/seurat_QC_metrics.rds"
)


# Violin plot

qc_violin <- VlnPlot(
  seurat_obj,
  features = c(
    "nFeature_RNA",
    "nCount_RNA",
    "percent.mt"
  ),
  ncol = 3
)


ggsave(
  filename = "figures/QC_violin_plot.png",
  plot = qc_violin,
  width = 12,
  height = 4
)



# Feature scatter plot

qc_scatter <- FeatureScatter(
  seurat_obj,
  feature1 = "nCount_RNA",
  feature2 = "nFeature_RNA"
)


ggsave(
  filename = "figures/QC_scatter_plot.png",
  plot = qc_scatter,
  width = 6,
  height = 5
)
