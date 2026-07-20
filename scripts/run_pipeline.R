# ============================================================
# Script: run_pipeline.R
# Project: scRNAseq-QC-Pipeline
# Purpose: Execute complete scRNA-seq QC workflow
# ============================================================


source("scripts/01_load_data.R")

source("scripts/02_quality_control.R")

source("scripts/03_visualization.R")

source("scripts/04_filtering.R")
