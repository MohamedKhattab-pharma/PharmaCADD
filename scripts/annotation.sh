
### Technical Annotation

vep -i Final_SNPS.vcf -o Annotated_snp.vcf --vcf --species homo_sapiens 
    --assembly GRCh38 --cache--offline --fasta GRCh38.dna.toplevel.fa.gz --everything

vep -i Final_INDELS.vcf -o Annotated_indels.vcf --vcf --species homo_sapiens 
    --assembly GRCh38 --cache--offline --fasta GRCh38.dna.toplevel.fa.gz --everything
