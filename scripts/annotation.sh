
### Technical Annotation

vep -i SNPS_filtered.vcf -o Annotated_snp.vcf --vcf --species homo_sapiens 
    --assembly GRCh38 --cache--offline --fasta GRCh38.dna.toplevel.fa.gz --everything

vep -i INDELs_filtered.vcf -o Annotated_indels.vcf --vcf --species homo_sapiens 
    --assembly GRCh38 --cache--offline --fasta GRCh38.dna.toplevel.fa.gz --everything
    
