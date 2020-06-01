---
layout: project
title: KG-COVID-19
active: yes
funding: DOE LDRD
homepage: https://github.com/Knowledge-Graph-Hub/kg-covid-19
github: https://github.com/Knowledge-Graph-Hub/kg-covid-19
logo: 
twitter: 
---

**KG-COVID-19: Knowledge Graph for COVID-19 Response**

The goal of the KG-COVID-19 project is to use Machine Learning (ML) to generate useful
COVID-related knowledge. Rich biological knowledge exists about SARS-CoV-2 and related 
viruses (SARS-CoV, MERS-CoV), for example genomics, epidemiology, susceptibility, 
clinical/symptoms, viral lifecycle, pathways, and inhibitors. However, much of this 
information is either locked in textual form in the literature, or in individual 
siloed databases, making integrative prediction difficult and costly. 

To address this challenge, we have produced we have produced a COVID-19 knowledge graph
(KG) to support both DOE and international COVID-19 efforts:
https://github.com/Knowledge-Graph-Hub/kg-covid-19/wiki

This knowledge graph incorporates up-to-date data extracted from biomedical databases 
and literature, including drug, protein-protein interactions, SARS-CoV-2 gene 
annotations, concept and publication data from the CORD19 data set. We also ingest
the [Human Phenotype Ontology](https://hpo.jax.org/), [the Gene Ontology](http://geneontology.org/),
 and [Mondo](https://mondo.monarchinitiative.org/) for phenotype, gene 
annotations and diseases, respectively, in order to integrate the data in an
ontology-aware way. 

![img](kg-covid-19-contents.png)

We are currently applying machine learning (ML) techniques to discover new links 
(for example, identifying existing drugs that could be repurposed to treat COVID-19)
and generate actionable knowledge. In addition, we are providing this knowledge graph
to the COVID-19 research community in order to accelerate COVID-19 research.

![img](kg-covid-pipeline.png)

People:
- Justin Reese - LBNL
- Deepak Unni - LBNL
- Marcin Joachimiak - LBNL
- Peter Robinson - Jackson Laboratory
- Chris Mungall - LBNL 
- Tiffany Callahan - University of Colorado Denver
- Luca Cappelletti - University of Milan
- Vida Ravanmehr - Jackson Laboratory
