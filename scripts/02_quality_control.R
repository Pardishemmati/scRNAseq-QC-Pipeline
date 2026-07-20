# ============================================================
# Script: 02_quality_control.R
# Project: scRNAseq-QC-Pipeline
# Purpose: Calculate QC metrics for scRNA-seq data
# ============================================================


library(Seurat)
library(dplyr)
library(ggplot2)


# Load Seurat object created in previous step

seurat_obj <- readRDS(
  "results/seurat_raw.rds"
)


# Calculate mitochondrial percentage

seurat_obj[["percent.mt"]] <- PercentageFeatureSet(
  seurat_obj,
  pattern = "^MT-"
)


# Display QC metrics

VlnPlot(
  seurat_obj,
  features = c(
    "nFeature_RNA",
    "nCount_RNA",
    "percent.mt"
  ),
  ncol = 3
)


# Save updated object

saveRDS(
  seurat_obj,
  "results/seurat_QC_metrics.rds"
)

saveRDS(
  seurat_obj,
  "results/seurat_raw.rds"
)
