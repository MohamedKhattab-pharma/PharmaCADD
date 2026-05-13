# PharmaCADD (In Progress)
## Pharmacogenomics-Guided Optimization of Praziquantel: Variant Discovery, Functional Annotation, and Drug Target Identification in African Populations

---

# 🧬 Project Overview

PharmaCADD is a **computational pharmacogenomics and drug discovery pipeline** designed to investigate how **human genetic variation influences response to Praziquantel**, a first-line anthelmintic drug used in the treatment of schistosomiasis.

This project focuses on **Zimbabwean population genomic variation**, aiming to bridge:

- 🧬 Variant discovery (NGS data)
- 🧪 Functional annotation (VEP)
- 💊 Pharmacogenomics interpretation (PharmGKB, ClinVar)
- 🧬 Target prioritization for drug response pathways
- 🧪 Structural biology preparation for molecular docking (MOE-based workflow)

---

# 🎯 Scientific Objectives

### 1. Variant Discovery
Identify high-confidence SNPs and indels affecting genes involved in:
- Drug metabolism
- Transport mechanisms
- Xenobiotic response

---

### 2. Functional Annotation
Characterize variants using:
- Molecular consequence (missense, synonymous, regulatory)
- Protein-level impact
- Population allele frequency

---

### 3. Pharmacogenomic Mapping
Integrate variant data with:
- Known drug–gene interactions
- Pharmacokinetic/pharmacodynamic pathways

---

### 4. Clinical Relevance Layer
Overlay clinical interpretation using:
- Disease associations (ClinVar)
- Drug response evidence (PharmGKB)

---

### 5. Drug Target Prioritization
Identify high-confidence drug-response genes suitable for:
- molecular docking
- structural biology analysis
- potential drug repositioning studies

---
---

### 6. Molecular Docking, Pharmacophore modelling & ADME Prediction
-In progress

---

# 🧬 Full Pipeline Architecture

```text
RAW FASTQ DATA
        ↓
Quality Control (FastQC)
        ↓
Read Trimming (Trimmomatic/cutadept)
        ↓
Alignment to GRCh38 (BWA)
        ↓
Variant Calling (GATK)
        ↓
SNP + Indel Filtering (bcftools)
        ↓
Variant Normalization (bcftools norm)
        ↓
Functional Annotation (Ensembl VEP)
        ↓
Gene Extraction (CSQ parsing)
        ↓
Pharmacogenomic Mapping (PharmGKB)
        ↓
Clinical Annotation Layer (ClinVar optional)
        ↓
Gene Prioritization (frequency + overlap scoring)
        ↓
Protein Mapping (UniProt)
        ↓
Target Filtering (CYP / SLC / ABC / UGT)
        ↓
 Molecular Docking (MZDock, AutodockVina, UCFChimera)

