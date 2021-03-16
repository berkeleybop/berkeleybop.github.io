---
layout: page
published: true
title: Best Practice
---

This is the best practice / style guide for the BBOP group. Inspired by / cribbed from [Knocean practice](https://github.com/knocean/practises/)

We are a diverse group working on many different projects with
different stakeholders and sets of collaborators. Nevertheless we
strive to follow a set of core best practices so we can be most
efficient and develop the highest quality code, ontologies, standards,
schemas, and analyses.

## Git and GitHub

- use git
- [commit early, commit often](https://deepsource.io/blog/git-best-practices)
   - perfect later!
   - you should always be working on a branch, so don't worry about breaking things
- Make repos public by default
- Use standard repo layouts
- Include standard files:
   - README.md
   - LICENSE (BSD preferred for software)
   - CONTRIBUTING.md
   - Changes.md
   - .gitignore
   - Makefile
- use GitHub
    - Like GitLab in principle, but GitHub has network effect
    - prefer to work on the main repo, not forks, but defer to project-specific guidelines
- use GitHub issues
    - in general you should always we working to a ticket assigned to you
    - try to assign every issue to somebody
    - try to have a single assignee / responsible person
    - tag people if necessary
       - note: if you tag me with @cmungall it's likely I won't see it. alert me to a ticket via slack if I am required
    - use GitHub's default labels: bug, question, enhancement, good first issue, etc.
    - set up standard issue templates
- use GitHub Pull Requests
    - mark as draft until ready for review, then assign reviewers
    - description should link to an issue "Resolves #1234"
        - otherwise you have to clean up issues manually
    - update description as needed
- use GitHub Milestones to plan releases
- use GitHub Releases to tag versions and attach binaries
- use GitHub Pages for simple static content and documentation
    - prefer the `docs/` directory option
- use GitHub Projects ("project boards") for coordinating issues and PRs
    - three columns:
        - To do: for manager to fill and prioritize
        - In progress: for developer to keep up-to-date
        - Ready for review: for manager to empty
    - order of preference for cards: PR link, issue link, text
- set up GitHub actions to do CI
- set up badges
- read our [GitHub Overview](https://docs.google.com/document/d/1YZ4kLyGka7MZPy824CHN7V2lnChFwJAGWpubKGr8n7w/edit)
- tend your repos
    - remove cruft such as obsolete files (GitHub preserves history)
    - avoid random stuff at top level
    - keep README in sync

### Software-centric Repos

- Use an existing repo from a group member as template for best practice, e.g.,
   - [kgx](https://github.com/biolink/kgx/)
   - [linkml](https://github.com/biolink/biolinkml/)
- Include a README.md
   - provide sufficient context
   - don't boil the ocean - put reference material in a separate reference guide
- Create reference documentation using RTD/Sphinx
   - let inline docstrings in Python do most of the work for you
- Include installation instructions
- use an OSI approved LICENSE, BSD3 preferred
- Use unit tests
   - consult others on framework
- Use GitHub-integrated CI
   - formerly Travis
   - use GitHub actions
- Release code to PyPI or appropriate repo
   - use GitHub releases
   - use GitHub actions to trigger releases to PyPI
- Consider a Dockerfile
- For ETL repos, follow standard templates for
   - kg-hub
   - koza
- For ETL repos
   - Use Jenkins pipelines
- Badges
   - CI
   - Code coverage
   - PyPI
   - TODO: ADD MORE

### Schema/Standards-centric Repos

- You will be using [linkml](https://github.com/biolink/biolinkml/)
- Create repo from [LinkML template](https://github.com/link-modeling/linkml-template)
- Register with w3id.org
- Include comprehensive examples
- Use LinkML mkdocs framework
- Understand the difference between [OWL-centric and KG-centric modeling](https://douroucouli.wordpress.com/2019/03/14/biological-knowledge-graph-modeling-design-patterns/)
- include mappings to biolink model

### Ontology-centric Repos

- Use [ODK seed](https://github.com/INCATools/ontology-development-kit/)
- Register ontology with OBO
- Use GitHub for .owl distribution unless ontology is large, then consider:
   - GitHub releases
   - S3
- Follow group exemplars
- distribute SSSOM
- always distribute an .obo
- always distribute a obo .json
- distribute a kgx file

### Analysis/Paper-centric Repos

- One repo per paper
- Entire analysis must be reproducible via Makefile
   - All steps:
      - download
      - clean/pre-process
      - transform
      - training
      - evaluation
   - check with Chris before using snakemake/CWL/alternatives
   - Chris still uses biomake
- Use TSVs as default
- ALL TSVs MUST have data dictionaries
   - use LinkML (see above)
- check in small-mid size data files (<10m)
   - consider [cogs](https://github.com/ontodev/cogs) if TSVs must be managed in google sheets
- use JSON for complex data
- use KGX for anything that should be modeled as a KG
- manage metadata in GitHub
- sync repo with Zenodo
- use S3 for larger files
   - release files to Zenodo
- Dockerize   
- Use Jupyter notebooks
- Consider [Manubot](https://manubot.org/)

## Documentation

- all code, schemas, analyses, ontologies, MUST be documented
- code documentation is a love-letter to your future self
- understand [this four-way distinction](https://www.divio.com/blog/documentation/): tutorial, how-to, reference, explanation
- have strategies to avoid staleness and documentation being out of sync
- use inline documentation
    - publish via appropriate framework (RTD for code, mkdocs for schema, etc)
    - follow appropriate style guide
- examples, examples, examples
   - fenced examples in markdown docs
   - example standalone scripts
   - example Jupyter notebooks
   - unit tests can serve as examples
- use Markdown as default
   - RST acceptable for RTD
   - Google docs acceptable for initial brainstorming
   - Don't use Wikis (mediawiki, GitHub wiki)
   - Manage markdown docs as version control
   - publish as static site (RTD, mkdocs, etc)

## Coding/Python

- Python is the default language; use others as appropriate
   - javascript/typescript for client-side
   - Rust for speed
   - Scala for performance reasoners
   - Historically we used Java for anything requiring OWLAPI but being phased out
   - Chris still uses Prolog
- Why Python?
   - ubiquitous, cross-platform
   - good for scripting, interactive development
   - strong ecosystem of libraries for almost anything
   - Easy for developers to pick up
   - Most bioinformaticians know it
   - use for anything more than about 10 lines of Bash/Perl
   - use Python 3.6+
- Conform to the group style guide, or at least *some* style guide
   - [pep-0008](https://www.python.org/dev/peps/pep-0008/) for Python
   - numpy-style docstrings
- use flask/fastAPI for web apps
   - don't author OpenAPI directly; derive
- avoid authoring complex data models
   - use LinkML and derived datamodel classes
- use typing
- use dataclasses or pydantic
- use an IDE
   - PyCharm is most popular
- ETL/ingest
   - follow existing exemplar repos
   - Read Chris' [10 simple rules for semantic ETL](https://docs.google.com/document/d/1Bgsyo-Z1oxEfxdNGB3KDM_NHfXYqdcXJIUd_j3iibi4/edit#)
- TODO: Best practice for
   - test framework (unittest vs pytest?)
   - environments: venv vs pipenv
   - config: requirements.txt vs toml vs Pipenv vs setup.cfg...
   - layout: src/name vs name
   
## Database Engines

- use whatever is appropriate for the job
   - blazegraph for ttl
   - neo4j for KGs
   - sqlite for lightweight tabular
   - solr for searchable / denormalized / analytics
      - always use golr patterns
      - read [semantic columnar store patterns](https://docs.google.com/document/d/1GoTZd4HSHI9q48Q6WUR4eDgBy0WgwsXcfVBihs_l0CU/edit)
- always have a schema no matter what the task
    - always derive from LinkML

## Developer tools

- GNU Make
- cogs
- linkml
- odk
- robot
- bash; small scripts only
- pandoc
- Docker
- editor of your choice

## Libraries

- Data science
   - pandas
   - scikit-learn
   - tensorflow
   - catboost
   - KGs
      - kgx
      - embiggen
      - NEAT
      - BMT
   - seaborn
- Ontologies
   - ontobio
   - OWLAPI (JVM) -- only where necessary
   - obographviz (js)
   - don't use rdflib for parsing OWL files, too low level
   - never, ever use XML parsers to parse RDF/XML
- NER/NLP
   - runNER (which wraps OGER)
   - BERT for language models (experimental)
- Data
   - curie_util
- Code
   - typing
- Machine learning
   - we frequently use tensorflow, scikitlearn, keras
   - for graph machine learning, we have helped develop [EnsmallenGraph](https://github.com/AnacletoLAB/ensmallen_graph), a fast graph library in Rust, with Python bindings, that helps do fast graph ML
   - [Embiggen](https://github.com/monarch-initiative/embiggen) is our ML library (which uses Ensmallen) - it does graph ML (e.g. node2vec), and some other things like word2vec
   - [NEAT](https://github.com/Knowledge-Graph-Hub/NEAT) is a Python library that makes it very easy to do reproducible graph ML in a YAML-driven way

## File formats, languages, and standards

- General
   - TSVs for columnar data
       - always have a data dictionary
       - make it pandas-friendly
       - meaningful column names
       - SSSOM is an exemplar
   - hand-author YAML over JSON (+ follow schema)
   - Use JSON-LD / YAML-LD as appropriate
       - understand JSON-LD contexts
       - get context for free with LinkML
   - Turtle for some purposes
   - RDF/XML as default for OWL
- Ontologies
   - OWL
   - [OBO JSON](https://douroucouli.wordpress.com/2016/10/04/a-developer-friendly-json-exchange-format-for-ontologies/)
   - consider obo format deprecated. Exception: easier to maintain edit file as obo for git diff/PR purposes
   - COB as upper ontology, but also pay attention to biolink
- Mappings (ontology or otherwise)
   - SSSOM with skos predicates
- KGs
   - biolink
   - kgx
   - RDF*
   - make available as:
      - RDF dump
      - Neo4J dump
      - sparql endpoint (consider putting into larger endpoint and segregating with NGs)
      - neo4j endpoint
      - KGX dump
      - KGX summary stats
- Schemas
   - Always author in linkml
   - JSON-schema for JSON-centric projects (never author, always derive from LinkML)
   - ShEx for ontology-centric (try and derive from LinkML)
   - kwalify is deprecated for us
   - Always have a LinkML schema even when using
      - python dicts
      - open-ended JSON/YAML
      - RDF
      - Neo4J
      - ad-hoc TSVs
   - Include mappings:
      - biolink
- Versioning
   - Semantic Versioning (semver) by default
   - ISO-8601 OBO style for ontologies
   - use GitHub releases for versioning as appropriate
   - release versions to appropriate repository/archive
- Text
   - markdown by default
      - frontmatter metadata where appropriate
      - track in version control
- APIs
   - RESTfulness
      - true REST may be too high a barrier
      - RPC-style (i.e. swagger/openAPI) may be fine
   - All web APIs should have OpenAPI exploration interface
   - derive OpenAPI from Python code
      - flask or fastapi
   - Must have Docker container
   - Use grlc to make APIs from sparql endpoints
- CURIEs and IRIs
   - Read [McMurry et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5490878/pdf/pbio.2001414.pdf)
   - always use CURIEs for IDs
   - always use registered prefixes
   - have an explicit JSON-LD context or prefixes yaml file
   - Use [github.com/prefixcommons/biocontext](https://github.com/prefixcommons/biocontext)
   - Use the [prefixcommons curie util library](https://github.com/prefixcommons)
   - Read the identifiers guides closely, even for projects you are not on
      - [Translator SRI/biolink identifiers](https://biolink.github.io/biolink-model/#identifiers)
      - [Identifiers in NMDC](https://microbiomedata.github.io/nmdc-metadata/identifiers/)
      - [Identifiers in GO](http://wiki.geneontology.org/index.php/Identifiers)
      
- Genomics
   - GFF3
   - SO
- Annotation
   - GAF
   - GPAD
   - Phenopackets
- Dates
   - If you don't use ISO-8601 you will go to hell

## Portability

- it should be easy for anyone to install from any of our repos
- everything should run on macos or linux
- provide a Docker image for anything complex
- use standard installation idioms

## Key specialized libraries and command line tools

- [ontobio](https://github.com/biolink/ontobio), for ontologies and associations
- [kgx](https://github.com/biolink/kgx)
- [ODK](https://github.com/INCATools/ontology-development-kit) and [ROBOT](https://github.com/ontodev/robot), for ontologies
- runNER for NER

## Ontologies

- ontologies are for users, not ontologists
  - OWL and description logic is necessary for building robust ontologies, but needn't be exposed
  - Minimize philosophy
  - avoid unnecessary abstractions
- ontologies should have annotations
   - annotations, as in the sense used by curators
   - ontologies without annotations are generally of limited use, avoid working on them
- learn tools and best practice for robust ontology engineering
  - Read [my Onto-Tips](https://douroucouli.wordpress.com/2019/03/09/ontotips-a-series-of-assorted-ontology-development-guidelines/)
  - Use [ODK](https://github.com/INCATools/ontology-development-kit)
  - Use [ROBOT](https://github.com/ontodev/robot)
  - Do the GO OWL tutorial
  - For advanced OWL-centric tasks, use scowl
- use the ontologies we work on as examplars
   - GO
   - Mondo
   - Phenotype Ontologies
   - ENVO
   - Uberon
   - RO
- follow OBO best practice and principles
   - ontologies should be open
   - if OBO is underspecified, follow the examples of projects done in this group
      - oio over IAO
      - liberal axiom annotations
      - key annotation properties: synonyms, definitions, mappings
      - See [documentation on uberon synonyms](https://github.com/obophenotype/uberon/wiki/Using-uberon-for-text-mining), this is an exemplar for us
      - dosdp over robot, but always use the more appropriate tool for the job
- include comprehensive definitions clear to biologists
   - [read my definitions guide](https://douroucouli.wordpress.com/2019/07/08/ontotip-write-simple-concise-clear-operational-textual-definitions/)
- understand [compositional patterns](https://douroucouli.wordpress.com/2019/06/29/ontotip-learn-the-rector-normalization-technique/)
- avoid overmodeling
- Document ontologies
   - [document design decisions](https://douroucouli.wordpress.com/2019/06/16/ontotip-clearly-document-your-design-decisions/)
   - write clear operational definitions
   - document your design patterns
      - Watch [design pattern presentation](https://douroucouli.wordpress.com/2020/11/02/aligning-design-patterns-across-multiple-ontologies-in-the-life-sciences/)
      - Mondo is our exemplar
- understand limitations
- use ontologies only where appropriate
   - vocabularies
   - descriptors
   - don't use an ontology where a schema is more appropriate
   - don't use an ontology where a KG is more appropriate. See [KG vs ontology DPs](https://douroucouli.wordpress.com/2019/03/14/biological-knowledge-graph-modeling-design-patterns/)
- make best effort attempt to provide mappings
   - use SSSOM
   - use boomer

## Collaboration

- we are a collaborative group, reach out if you have issues
   - join relevant channels on bbop and other slacks
   - questions always welcome but make best effort to see if information available in group reference guides
- make things easier for those who follow you
   - the same questions often come up repeatedly
   - if someone answers a question for you, update the relevant guide to make it clearer for others
- follow codes of conduct
- be constructive in any criticism
- use your Berkeley Lab account for email, calendars
- keep your calendar up to date, this facilitates scheduling meetings
- slack
   - avoid `@channel` unless necessary
   - don't be a channel anarchist
   - discussion about tickets OK but decisions and key points must be recorded in ticket

## Google docs/slides/sheets hygiene

- Use google docs/slides over Microsoft/Apple
    - but sometimes markdown+git is more appropriate than either
    - for grants, papers, and other collaborative documents, move to Word at last possible minute (if at all)
    - pandocs can be used to make markdown
    - avoid latex/beamer unless it is really called for
- Use tagging/comments/modes appropriately
    - If it's not your doc, default to Suggesting mode
       - use your judgment; minor direct edits to correct typos usually OK
       - respect conventions of document owner
    - use comment feature to make comments, don't write your comment in a different color
    - avoid use of text color as semantics
    - assign/tag people appropriately
    - avoid comment wars
- Make the doc outline-mode-friendly
    - use H1/H2/etc
    - always have outline mode on (list-like icon near top left)
    - assume the reader has outline mode on
    - rarely need for a TOC
- Use formatted templates where appropriate (grants, papers)
- Use Paperpile for citations / reference management (you have access via the lab)
- Give documents meaningful names (e.g., not just "meeting")--assume that most people will find the doc via search rather than by going through the folder hierarchy
- Use a rolling agenda/notes doc, rather than one doc per meeting
- always have a google doc for every meeting you are in
- include a link to the rolling doc in calendar invites
- include the Zoom / videoconference link in the rolling notes doc
- organize google docs in the relevant folder depending on what project is funding the work
- understand how navigation works for google docs
- make visible to all by default
- include links to slides of general relevance from project repos
- favour TSV+github over google sheets
   - workflows clearly favor sheets
   - when using sheets, use [cogs](https://github.com/ontodev/cogs)
- follow TSV guidelines for google sheets
- don't use color for semantics. Always use conditional formatting for colors etc
- reuse slides from existing slide decks, but provide attribution

## General Principles

- DRY: Don't Repeat Yourself
   - but avoid over-abstraction and frameworkitis
- Always reuse
   - we probably have a Python library for it
   - reuse general design patterns
   - GitHub templates
   - follow exemplar repos
       - kgx and linkml for general python
       - [kg-covid-19](https://github.com/Knowledge-Graph-Hub/kg-covid-19) for ETL
   - try especially hard not to reinvent what someone in the group or our collaborator has done
- Don't boil the ocean
- Avoid perfectionism; iterate on solutions
- For many tasks, the 80/20 rule may suffice
- More to come...

