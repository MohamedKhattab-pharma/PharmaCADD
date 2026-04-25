# Limitations

## 1. Data Limitations
- Analysis depends on publicly available datasets
- Sample size may be limited
- Population diversity may not be representative

---

## 2. Variant Calling Constraints
- False positives and false negatives may occur
- Indels are generally harder to detect accurately than SNPs
- Coverage depth affects variant detection sensitivity

---

## 3. Annotation Limitations
- Annotation databases may be incomplete or outdated
- Novel variants may lack functional information
- Predictions (e.g., missense impact) are computational, not experimental

---

## 4. Lack of Clinical Validation
- No direct clinical data linking variants to praziquantel response
- Findings are hypothesis-generating only

---

## 5. Pipeline Assumptions
- Assumes correct alignment to reference genome
- Assumes standard filtering thresholds are appropriate
- May miss structural variants or large genomic rearrangements

---

## 6. Computational Constraints
- Limited computational resources may affect performance
- Parallelization was restricted by available hardware

---

## 7. Biological Complexity
Drug response is influenced by:
- Multiple genes
- Environmental factors
- Epigenetics

This pipeline captures only genomic variation.

---

## Future Improvements

- Integration with gene expression data
- Functional validation (wet lab or in silico docking)
- Machine learning models for prediction
- Larger and more diverse datasets
