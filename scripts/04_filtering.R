# ============================================================
# Script: 04_filtering.R
# Project: scRNAseq-QC-Pipeline
# Purpose: Filter low-quality cells
# ============================================================


library(Seurat)


# Load QC object

seurat_obj <- readRDS(
  "results/seurat_QC_metrics.rds"
)


# Apply filtering thresholds

seurat_filtered <- subset(
  seurat_obj,
  subset =
    nFeature_RNA > 200 &
    nFeature_RNA < 6000 &
    percent.mt < 10
)


# Print summary

seurat_filtered


# Save filtered object

saveRDS(
  seurat_filtered,
  "results/seurat_filtered.rds"
)
