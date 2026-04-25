# Methodology

## Overview
This project investigates genetic variants potentially influencing response to praziquantel using a standardized variant calling and annotation pipeline. The workflow follows best practices for short-read sequencing data analysis.

---

## 1. Data Acquisition
Raw paired-end FASTQ files were obtained from publicly available sequencing datasets (e.g., SRA/ENA). These represent human genomic data relevant to pharmacogenomic analysis.

---

## 2. Quality Control
Initial quality assessment was performed using FastQC.

- Evaluated metrics:
  - Per base sequence quality
  - GC content
  - Adapter contamination
  - Sequence duplication levels

---

## 3. Read Trimming
Reads were cleaned using fastp:
- Adapter removal
- Low-quality base trimming (Q < 20)
- Minimum read length filtering

This step ensures high-quality reads for downstream analysis.

---

## 4. Alignment
Cleaned reads were aligned to the human reference genome (GRCh38) using BWA-MEM.

Steps:
1. Reference genome indexing
2. Read alignment
3. Conversion to BAM format
4. Sorting and indexing using SAMtools

---

## 5. Variant Calling
Variants were identified using GATK HaplotypeCaller.

- Input: Sorted, indexed BAM file
- Output: Raw VCF file containing SNPs and indels

---

## 6. Variant Filtering
Variants were filtered separately for SNPs and indels using GATK VariantFiltration.

### SNP Filters:
- QD < 2.0
- FS > 60.0
- MQ < 40.0

### Indel Filters:
- QD < 2.0
- FS > 200.0

Filtered variants were retained for annotation.

---

## 7. Variant Annotation
Variants were annotated using Ensembl Variant Effect Predictor (VEP).

Annotations include:
- Gene names
- Variant consequence (missense, synonymous, etc.)
- Protein impact
- Known variant databases (e.g., dbSNP)

---

## 8. Data Organization
Outputs were structured into:
- VCF files
- Annotated variant tables
- Quality control reports
- Visualization-ready datasets

---

## Reproducibility
All analyses were executed using bash scripts and documented workflows. Software versions and dependencies are specified in the environment configuration file.
