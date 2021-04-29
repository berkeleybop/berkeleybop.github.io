---
layout: software
title: Mondo Disease Ontology
active: yes
homepage: https://mondo.monarchinitiative.org/
source: https://github.com/monarch-initiative/mondo
logo: mondo-logo-smaller.jpeg
travis: 
docs:
twitter: 
---

The Mondo Disease Ontology (Mondo) aims to harmonize disease definitions across the world.

Numerous sources for disease definitions and data models currently exist, which include HPO, OMIM, SNOMED CT, ICD, PhenoDB, MedDRA, MedGen, ORDO, DO, GARD, etc;
however, these sources partially overlap and sometimes conflict, making it difficult to know definitively how they relate to each other.
This has resulted in a proliferation of mappings between disease entries in different resources; however mappings are problematic: collectively, they are expensive to create and maintain.
Most importantly, the mappings lack completeness, accuracy, and precision; as a result, mapping calls are often inconsistent between resources.
The UMLS provides intermediate concepts through which other resources can be mapped, but these mappings suffer from the same challenges: they are not guaranteed to be one-to-one, especially in areas with evolving disease concepts such as rare disease.

In order to address the lack of a unified disease terminology that provides precise equivalences between disease concepts, we created Mondo, which provides a logic-based structure for unifying multiple disease resources.

Mondo’s development is coordinated with the Human Phenotype Ontology (HPO), which describes the individual phenotypic features that constitute a disease. Like the HPO, Mondo provides a hierarchical structure which can be used for classification or “rolling up” diseases to higher level groupings.
It provides mappings to other disease resources, but in contrast to other mappings between ontologies, we precisely annotate each mapping using strict semantics, so that we know when two disease names or identifiers are equivalent or one-to-one, in contrast to simply being closely related.

For more details, please visit https://github.com/monarch-initiative/mondo.
