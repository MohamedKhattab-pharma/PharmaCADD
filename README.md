# PharmaCADD
Pharmacogenomics-Guided Optimization of Praziquantel: Variant Discovery and Target Identification in Zimbabwean Populations

### 🧬 Project Overview

This project investigates the pharmacogenetic variability of Praziquantel in Zimbabwean populations by identifying genetic variants that may influence drug response and efficacy.

Using a full NGS pipeline, we:

Process raw sequencing data
Identify genomic variants
Annotate clinically relevant mutations
Map variants to pharmacogenes
Propose potential targets for Computer-Aided Drug Design (CADD)


🎯 Objectives
Detect SNPs and indels affecting drug metabolism and response
Annotate variants using:
ClinVar
pharmacogenomic databases
Identify genes influencing praziquantel pharmacokinetics/dynamics
Suggest novel targets to improve drug efficacy


⚙️ Pipeline Overview

Explain each step scientifically, not just technically:

1. Quality Control

Tool: FastQC

Assess read quality, GC content, duplication levels

2. Trimming

Tool: Trimmomatic

Remove adapters and low-quality bases

3. Alignment

Tool: BWA

Map reads to reference genome

4. Variant Calling

Tool: GATK

Generate VCF files (SNPs + indels)

5. Annotation

Tools:

ANNOVAR

ClinVar
