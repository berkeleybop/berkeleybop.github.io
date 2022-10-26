---
layout: project
title: INCA
active: no
github: http://github.com/INCATools/
funding: NIH U01HG009453
homepage: https://github.com/INCATools/intelligent-concept-assistant
---

Experimental data is generally insufficiently described, which severely limits our ability to find it, reuse it, and compute over it. 
We wanted to address this gap in the research landscape with the implementation of an Intelligent Concept Agent (INCA) that assists in the creation, extension, application, and maintenance of vocabulary standards describing experimental datasets and results. 
INCA aims to make it easier for researchers to share and modify the concepts used to describe data, and provide automated assistance to those seeking to apply these concepts. 

The INCA project ended in 2021.

**Impact**: 
Tools from the INCA suite are proving invaluable for NIH information resources such as the Alliance of Genome Resources, which integrates information from multiple species. Using our ODK and Design Patterns tools we have been able to come up with standard processes for curators to add terms needed for disease, phenotype and genotype annotation to ontologies, and for bringing in new organisms such as Xenopus. The standards that were developed or contributed to as part of this project are expected to make an impact.

**Outcomes**:
The INtelligent Concept Assistant (INCA) project was conceived with the ambitious goal of creating the components of a system that would aid data submitters and curators with the task of making their data FAIR (Findable, Accessible, Interoperable, Reusable). This is currently challenging for a number of reasons: 1) It is hard for non-experts to find and add terms to relevant ontologies and standards; 2) it is time-consuming to manually fill in multiple sometimes redundant metadata fields when describing data; and 3) existing metadata in current biomedical databases is often sparse and incorrect.

As an example of the first issue, there are currently almost 1000 ontologies in BioPortal, some of which have tens of thousands of terms. It can be daunting for curators to find the right ontology, and even when they do it’s not clear how terms can be added. INCA takes advantage of the fact that there is implicit structure in these ontologies, with many repetitive patterns.
These structures are typically latent and not leveraged. We have developed a suite of algorithms and tools that detect that latent structure, extract it, and allow it to be used as a template. As an example, an exposures ontology may have many terms like “exposure to DDT through air” or “exposure to chlorpyrifos through ingestion”; the INCA tools discover the pattern “exposure to <pesticide> through <route>”, and allow rapid population of new terms that follow this pattern, making it easier for annotators to provide metadata for exposure data, which in turn makes this data more FAIR, and allows for easier meta-analysis.

Another issue is redundancy between ontologies. It can be confusing and limiting for data annotators and downstream data consumers to have to choose between two or more incomplete yet overlapping ontologies – it would be better to have a merged ontology that combined the best aspects of the overlapping ontologies. However, merging ontologies is a complex and resource-intensive task, and can lead to downstream maintenance issues as the merged ontologies get out of sync. We developed a principled yet practical novel solution to this problem that leverages two modes of inference: logic-based OWL reasoning, and probabilistic inference/machine learning. We call this Boomer (Bayesian OWL Ontology Merging).
Boomer “walks a tree of possibilities” testing the implications of merging individual terms in a set of multiple source ontologies, ruling out logically incoherent combinations, and yielding the most likely interpretation. This has proven to work extremely well for arriving at a first-pass merged ontology for curation, and a huge bonus is the generated reports that give a probabilistic estimate of problem areas of each individual ontology that can be investigated by curators. This has proven vital for the creation of the Mondo disease ontology, which merged multiple different diseases ontologies.

One of the most important impacts of INCA has been this kind of tooling that has made ontology development more scalable and easier for metadata curators to contribute to. Our design pattern system was indispensable for being able to align the efforts of multiple model organism ontologies with the Human Phenotype Ontology.

In the INCA project we also set about creating algorithms and approaches for automatically inferring metadata, both from figures in papers and from other existing metadata fields. Our FigTools library and FigClassifier neural network framework can accurately segment multi-panel figures and run named entity recognition on the accompanying caption, providing a means to auto-suggest ontology terms for annotation. We also devised ontology-based machine learning methods for suggesting values of metadata fields from tables and text, and set about applying this to the largest corpus of public sample data we could find, which was the NCBI/INSDC BioSample database. This required creating a framework for translating XML dumps of this database into a harmonized relational database.
We created methods that semi-automatically aligned metadata fields with standards such as MIxS. It turned out that a lot of the underlying data was highly messy, so we created routines for normalizing and harmonizing fields (e.g., units), making use of existing ML approaches such as quantulum for doing named entity recognition on measurement fields.

One major outcome of the INCA project was pushing forward and devising new standards. When we set out we did not realize that there was a lack of clear computable standards for many areas that are vital to our aims. Many data deposition standards such as those used for sample databases are described in non-computable ways, e.g. using Excel files, and lack software validators to determine if metadata or data conforms to the standard. We lacked standards for expressing mappings between ontology terms necessary for the ontology merging task. We lacked standards for expressing latent patterns in ontologies, which hindered adoption and creation of new terms. 
This project contributed to the creation of key standards including the LinkML “meta-standard” which allows for easy creation of new computable standards. We are also responsible for ontology design pattern standards, and our work contributed to the Simple Standard for Sharing Ontology (SSSOM) mappings standard.
