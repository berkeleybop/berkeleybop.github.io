---
layout: project
title: AI/ML projects
active: true
funding: 
homepage: https://monarch-initiative.github.io/ontogpt
github: https://github.com/monarch-initiative/ontogpt 
logo: 
twitter: 
---

BBOP is at the cutting edge of developing and applying new artificial intelligence (AI) and machine learning (ML) techniques in bioinformatics and biomedical ontologies.
Approaches we are exploring include Knowledge Graphs (KGs) and Large Language Models (LLMs) such as GPT-3/4 and LLAMA2.

Below are some examples of AI/ML-related projects we are currently engaged in.
Note that this work is evolving quickly, so this page may not be up to date!

***OntoGPT: a Python package for the generation of Ontologies and Knowledge Bases using large language models (LLMs)***

OntoGPT implements two different strategies for knowledge extraction: SPIRES and TALISMAN (see below for info about those)
- Source: [https://github.com/monarch-initiative/ontogpt](https://github.com/monarch-initiative/ontogpt)
- Documentation: [https://monarch-initiative.github.io/ontogpt](https://monarch-initiative.github.io/ontogpt)

***SPIRES (Structured Prompt Interrogation and Recursive Extraction of Semantics)***

- A Zero-shot learning (ZSL) approach to extracting nested semantic structures from text
- Takes two inputs - 1) LinkML schema 2) free text, and outputs knowledge in a structure conformant with the supplied schema in JSON, YAML, RDF or OWL formats
- Source: part of [OntoGPT](https://github.com/monarch-initiative/ontogpt)
- [Templates (see sidebar)](https://monarch-initiative.github.io/ontogpt/core/)
- [Blog post](https://monarchinit.medium.com/spires-building-structured-knowledge-bases-from-unstructured-text-using-large-language-models-eb68c12dea75)
- Paper: Caufield JH, Hegde H, Emonet V, Harris NL, Joachimiak MP, Matentzoglu N, Kim H, Moxon SAT, Reese JT, Haendel MA, Robinson PN, Mungall CJ. Structured prompt interrogation and recursive extraction of semantics (SPIRES): A method for populating knowledge bases using zero-shot learning. Bioinformatics. 2024. [https://doi.org/10.1093/bioinformatics/btae104](https://doi.org/10.1093/bioinformatics/btae104)

<img src="https://miro.medium.com/v2/resize:fit:952/format:webp/1*-s9p8cWQkvgjzmftpVYxNA.png" width="230"/>

***TALISMAN: a Python package for summarizing gene set functions using large language models (LLMs)****

- Uses GPT models to perform gene set function summarization as a complement to standard enrichment analysis
- Formerly known as SPINDOCTOR
- Source: [TALISMAN](https://github.com/monarch-initiative/talisman)
- Gene enrichment using TALISMAN: [https://monarch-initiative.github.io/ontogpt/#gene-enrichment-using-spindoctor](https://monarch-initiative.github.io/ontogpt/#gene-enrichment-using-spindoctor)
- Preprint: Joachimiak MP, Caufield JH, Harris NL, Kim H, Mungall CJ. Gene Set Summarization using Large Language Models. arXiv [q-bio.GN]. 2023. [http://arxiv.org/abs/2305.13338](https://arxiv.org/abs/2305.13338)

***CurateGPT***

- An LLM-driven tool to assist with curation (pre-alpha)
- Incorporates the DRAGON-AI method (see below)
- Source: [https://github.com/monarch-initiative/curate-gpt](https://github.com/monarch-initiative/curate-gpt)
- [Try it! (Pre-alpha version--not guaranteed to work)](http://curategpt.ai/)

***DRAGON-AI: Dynamic Retrieval Augmented Generation of Ontologies using Artificial Intelligence***

- An ontology generation method employing Large Language Models (LLMs) and Retrieval Augmented Generation (RAG).
- Source: part of [CurateGPT](https://github.com/monarch-initiative/curate-gpt)
- Preprint: Toro A, Anagnostopoulos AV, Bello S, Blumberg K, et al. Dynamic Retrieval Augmented Generation of Ontologies using Artificial Intelligence (DRAGON-AI). arXiv [cs.AI]. 2023. [https://arxiv.org/abs/2312.10904](https://arxiv.org/abs/2312.10904)

***Phenomics Assistant***

- A user-friendly interface that uses large language models (LLMs) to enable natural-language interaction with a knowledge graph of biomolecular and biomedical information.
- Interface: [https://monarch-assistant.streamlit.app/](https://monarch-assistant.streamlit.app/)
- Source: [Phenomics Assistant](https://github.com/monarch-initiative/phenomics-assistant)
- Preprint: O’Neil ST, Schaper K, Elsarboukh G, Reese JT, Moxon SAT, Harris NL, Munoz-Torres MC, Robinson PN, Haendel MA, Mungall CJ. Phenomics Assistant: An Interface for LLM-based Biomedical Knowledge Graph Exploration. bioRxiv 2024.01.31.578275. [https://doi.org/10.1101/2024.01.31.578275](https://doi.org/10.1101/2024.01.31.578275)

***Other work***

- [OBO Academy article on Leveraging ChatGPT for ontology curation](https://oboacademy.github.io/obook/lesson/chatgpt-ontology-curation/)

***More info***

- [Article about knowledge-backed AI with Monarch](https://monarchinit.medium.com/knowledge-backed-ai-with-monarch-a-match-made-in-heaven-a8296eec6b9f)
