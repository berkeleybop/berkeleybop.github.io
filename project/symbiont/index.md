---
layout: software
title: SymbiOnt
active: yes
homepage: 
funding: 
github: https://github.com/matentzn/symbiont
logo: 
docs:
twitter: 
---

# SymbiOnt: Augmenting and merging ontologies using ontology mappings and knowledge graph embeddings

No matter how hard we try to reconcile our ontologies -- for example, as part of efforts such as the [OBO Foundry](https://obofoundry.org/) --
there will always be some level of overlap between them, i.e. the same terms existing in multiple ontologies.
Data is regularly linked to concepts from different (sometimes internal, non-public) ontologies, and this data needs to be integrated – 
which means that the different ontologies need to be carefully aligned.
Furthermore, we want to be able to enrich our own ontologies with information (such as synonyms) from and links to other public sources.

Ontology and Knowledge Graph Matching seeks to find ways to link terms between ontologies,
employing techniques such as string-based matching, graph-based matching or more advanced techniques from Natural Language Processing (NLP).
Recently, Machine Learning (ML) algorithms and Knowledge Graph embeddings have been used to greatly enhance traditional mapping techniques, and we expect a lot more to come here.
Ontology Merging is concerned with combining two ontologies in a way that the resulting whole is consistent, yet richly axiomatised, and uses approaches from formal logic to Bayesian.
Ontology Engineering is the “art” of evolving an ontology in a sustainable way,
for example using design patterns, logical reasoning and more classical visualisation approaches focused on manual curation and automated quality control.

With SymbiOnt, we bring together techniques from all of the above to provide a fully executable workflow for ontology merging and augmentation.
The goal is to combine tools and techniques in a Docker-based workflow that enables the end-to-end merging and augmentation of ontologies.
For example, we want to be able to combine the many existing disease ontologies and terminologies into a rich coherent framework
and keep them synchronised with minimal human curation effort.

The SymbiOnt project is led by [Nico Matentzoglu](https://github.com/matentzn).
