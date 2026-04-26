### Merge VCF Files (INDELS & SNPS)
gatk MergeVcfs \
  -I final_snps_pass.vcf \
  -I final_indels_pass.vcf \
  -O merged.vcf

### Normalization of Merged VCF and compression
bcftools norm -m -both merged.vcf -Oz -o merged.norm.vcf.gz

tabix -p vcf merged.norm.vcf.gz

### VEP Functional Annotations
vep \
  -i merged.norm.vcf.gz \
  -o vep.vcf \
  --vcf \
  --cache \
  --dir_cache ~/.vep \
  --species homo_sapiens \
  --assembly GRCh38 \
  --offline \
  --everything \
  --fork 4

### Extracts CSG (Gene,consequence,Impact) and produces a workable tubular format
bcftools query -f '%CHROM\t%POS\t%CSQ\n' vep.vcf.gz > csq_table.txt


### Extract Gene list
cut -f3 csq_table.txt | cut -d'|' -f4 | sort -u > genes.txt

### Use PharmGKB Drug-Response to avoid disease focus and metabolite confusion.
awk -F'\t' '$3=="Gene" {print $2}' ~/.vep/databases/pharmgkb/relationships.tsv | sort -u > pharmgkb_genes.txt

### Gene Frequency Scoring
awk -F'\t' '$3=="Gene" {print $2}' ~/.vep/databases/pharmgkb/relationships.tsv | sort | uniq -c | sort -nr > gene_frequency.txt

### Selecting Core Pharmcogenomics Genes
awk '$1 >= 10 {print $2}' gene_frequency.txt > pharmgkb_core_genes.txt

### Intersection to produce Real Drug List for furthur Analysis
comm -12 <(sort genes.txt) <(sort pharmgkb_core_genes.txt) > prioritized_targets.txt

### Fasta Protein Retrieval Using UniProt
mkdir -p proteins

while read gene; do
    wget -q "https://rest.uniprot.org/uniprotkb/search?query=${gene}&format=fasta" \
    -O proteins/${gene}.fasta
done < prioritized_targets.txt

### Cleaning proteins
find proteins -size 0 -delete
ls proteins | sed 's/.fasta//' > protein_targets.txt


### Selecting Final Docking-revelant targets
grep -E "CYP|ABC|SLCO|SLC|UGT" protein_targets.txt > docking_targets.txt
