# ============================================================
# Script: 01_load_data.R
# Project: scRNAseq-QC-Pipeline
# Purpose: Load 10X Genomics single-cell RNA-seq data
# ============================================================


# Load libraries
library(Seurat)
library(dplyr)


# Define data path

data_path <- "data/raw/"


# Load 10X data

counts <- Read10X(
  data.dir = data_path
)


# Create Seurat object

seurat_obj <- CreateSeuratObject(
  counts = counts,
  project = "scRNAseq_QC",
  min.cells = 3,
  min.features = 200
)


# Show basic information

seurat_obj
