---
layout: software
title: PAINT
active: yes
homepage: 
source: https://github.com/geneontology/paint
docs: http://wiki.geneontology.org/index.php/PAINT_User_Guide
---

PAINT is a Java software application for supporting inference of ancestral as well as present-day characters (represented by ontology terms) in the context of a phylogenetic tree. PAINT is currently being used in the GO Reference Genome Annotation Project to support inference of GO function terms (molecular function, cellular component and biological process) by homology.

##  Principles underlying PAINT

For a more complete description, please see the publication on the GO Phylogenetic Annotation process, [Gaudet et al, Briefings in Bioinformatics, 2011](https://www.ncbi.nlm.nih.gov/pubmed/21873635). Annotation of a gene's function by homology is often referred to as "transitive annotation", in which an experimentally-characterized function of one gene is "transferred" to another gene because of their similarity in sequence.  This pairwise transfer paradigm derives from the success of sequence searching algorithms such as BLAST and Smith-Waterman. Of course, pairwise conservation of function is really due to descent from a common ancestor (homology).  In other words, two sequences of sufficient length are similar because they share a common ancestor, and the reason they have a common function is most likely that they inherited that function from their common ancestor.  This process can be explicitly captured using a phylogenetic model.

Rather than a pairwise paradigm, PAINT uses this more accurate phylogenetic model to infer gene function by homology.  PAINT annotation is intended to capture actual inferences about the evolution of gene function within a gene family: the gain, inheritance, modification and loss of function over evolutionary time.  Inference is a two-step process, and involves directly annotating a phylogenetic tree.  In the first step, experimental GO annotations for extant sequences are used to make inferences about when a given function may have first evolved.  In PAINT, this is referred to as "up-propagation", in which ancestral genes are annotated based on information about extant sequences.  In the second step, "down-propagation", ancestral annotations are used to make inferences about unannotated extant sequences, based on the principle of inheritance from the common ancestor, and allowing for modification and even loss of function during evolution.


![img](http://wiki.geneontology.org/images/2/25/PAINT_msa.png)

## References

* Gaudet, P., Livstone, M. S., Lewis, S. E., & Thomas, P. D. (2011). Phylogenetic-based propagation of functional annotations within the Gene Ontology consortium. Briefings in Bioinformatics, 12(5), 449–62. http://doi.org/10.1093/bib/bbr042
