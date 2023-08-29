---
layout: project
title: AI/ML projects
active: true
funding: 
homepage: https://monarch-initiative.github.io/ontogpt/
github: https://github.com/monarch-initiative/ontogpt 
logo: 
twitter: 
---

**Artificial Intelligence / Machine Learning projects at BBOP**

BBOP is at the cutting edge of developing and applying new AI techniques in bioinformatics and biomedical ontologies.
Approaches we are exploring include Knowledge Graphs (KGs) and Large Language Models (LLMs) such as GPT.

Below are some examples of AI/ML-related projects we are currently engaged in.
Note that this work is evolving quickly, so this page may not be up to date!

***OntoGPT: a Python package for the generation of Ontologies and Knowledge Bases using large language models (LLMs)***
OntoGPT implements two different strategies for knowledge extraction: SPIRES and SPINDOCTOR (see below for info about those)
- Source: [https://github.com/monarch-initiative/ontogpt](https://github.com/monarch-initiative/ontogpt)
- Documentation: [https://monarch-initiative.github.io/ontogpt](https://monarch-initiative.github.io/ontogpt)

SPIRES (Structured Prompt Interrogation and Recursive Extraction of Semantics)
- A Zero-shot learning (ZSL) approach to extracting nested semantic structures from text
- Takes two inputs - 1) LinkML schema 2) free text, and outputs knowledge in a structure conformant with the supplied schema in JSON, YAML, RDF or OWL formats
- Source: part of OntoGPT
- [Templates (see sidebar)](https://monarch-initiative.github.io/ontogpt/core/)
- Preprint: [https://arxiv.org/abs/2304.02711](https://arxiv.org/abs/2304.02711)

SPINDOCTOR (Structured Prompt Interpolation of Natural Language Descriptions Of Controlled Terms for Ontology Reporting)
- Source: part of OntoGPT
- Gene enrichment using SPINDOCTOR: [https://monarch-initiative.github.io/ontogpt/#gene-enrichment-using-spindoctor](https://monarch-initiative.github.io/ontogpt/#gene-enrichment-using-spindoctor)
- Preprint: [https://arxiv.org/abs/2305.13338](https://arxiv.org/abs/2305.13338)

***More info***
- [OBO Academy article on Leveraging ChatGPT for ontology curation](https://oboacademy.github.io/obook/lesson/chatgpt-ontology-curation/)
- [Article about knowledge-backed AI with Monarch](https://monarchinit.medium.com/knowledge-backed-ai-with-monarch-a-match-made-in-heaven-a8296eec6b9f)
