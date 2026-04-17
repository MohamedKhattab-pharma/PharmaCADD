# Processed Data (Not Stored in GitHub)

This folder contains analysis outputs from the pharmacogenomics pipeline.

## Generated Files (not included in repo due to size)

- aligned.sorted.bam (alignment output from BWA)
- aligned.sorted.bam.bai (index file)
- variants.vcf (variant calls from GATK)

- Soon will figure an online repo for easy access to these files.

## Why files are missing

These files are excluded because they are too large for GitHub and can be regenerated using the pipeline scripts:

```bash
bash scripts/alignment.sh
bash scripts/variant_calling.sh
