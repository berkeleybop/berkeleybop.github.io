---
layout: software
title: Biolink Model
active: yes
homepage: https://biolink.github.io/biolink-model/
source: https://github.com/biolink-model
logo: https://avatars1.githubusercontent.com/u/25489141?s=200&v=4
---

The Biolink Model is a high level datamodel of biological entities (genes, diseases, phenotypes, pathways, 
individuals, substances, etc) and their associations.

The model itself is designed as a way of standardizing types and relational structures in knowledge graphs (KGs), 
where the KG may be either a property graph or RDF triple store.

Biolink Model is authored and developed with the [BiolinkML](https://github.com/biolink/biolinkml) framework.

The schema is expressed as a YAML, which is translated to,
- Individual pages for each class in the model, e.g [biolink:Gene](https://w3id.org/biolink/vocab/Gene)
- An OWL ontology, also available on [BioPortal](https://bioportal.bioontology.org/ontologies/BLM)
- Python dataclasses, also available on [PyPI](https://pypi.org/project/biolink-model/)
- ShEx (RDF shape constraints)
- graphql (Experimental)
- protobuf (Experimental)
- json-schema (Experimental)

The schema assumes a property graph, where nodes represent individual entities, and edges represent associations 
between entities. Biolink Model provides a schema for representing both nodes and edges.

The model itself can be divided into three parts,
- Entities (Nodes)
- Associations (Edges)
- Slots (Properties)

The Biolink Model serves as the core datamodel for the [Biolink API](https://github.com/biolink/biolink-api/), an API for accessing biological knowledge.
