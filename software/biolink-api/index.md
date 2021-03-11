---
layout: software
title: Biolink API
active: yes
source: https://github.com/biolink/biolink-api
logo: https://avatars1.githubusercontent.com/u/25489141?s=200&v=4
---

The Biolink API provides access to information on biological and biomedically relevant entities, 
and associations between these entities. 

It is a light-weight data access layer that standardizes on,
- how data is accessed from multiple sources, by standardizing on access patterns
- the request parameters, by standardizing on core parameters for each route
- the response, by standardizing on the [Biolink Model](https://biolink.github.io/biolink-model/) to represent 
knowledge about entities and associations

While the API prescribes a core specification for commonly used routes, the actual implementation itself 
is left to the implementers.

There are two incarnations of the Biolink API,
- [Monarch API](http://api.monarchinitiative.org/api/)
- [Gene Ontology API](http://api.geneontology.org/api/)

with the latter being the canonical implementation, where the API sits on top of a 
Solr-based document store and a Neo4j graph database.
