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

## Coding

- Python is the default language; use others as appropriate
   - javascript/typescript for client-side
   - Rust for speed
   - Scala for performance reasoners
   - Historically we used java for anything requiring OWLAPI but being phased out
   - Chris still uses Prolog
- Why Python?
   - ubiquitous, cross-platform
   - good for scripting, interactive development
   - strong ecosystem of libraries for almost anything
   - Easy for developers to pick up
   - Most bioinformaticians know it
   - use for anything more than about 10 lines of Bash/Perl
   - use Python 3.6+
- Conform to the group style guide, or at least A style guide
   - [pep-0008](https://www.python.org/dev/peps/pep-0008/) for Python
   - numpy-style docstrings

## Git and GitHub

- use git!
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
- use GitHub
    - Like GitLab in principle, but GitHub has network effect
    - prefer to work on the main repo, not forks, but def to organization guidelines
- use GitHub issues
    - in general you should always we working to a ticket assigned to you
    - try to assign every issue to somebody
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
- set up github actions to do CI
- set up badges
- read our [GitHub Overview](https://docs.google.com/document/d/1YZ4kLyGka7MZPy824CHN7V2lnChFwJAGWpubKGr8n7w/edit)

### Software-centric Repos

- Use an existing repo from a group member as template for best practice
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
   - use github actions to trigger releases to PyPI
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

### Ontology-centric Repos

- Use [ODK seed](https://github.com/INCATools/ontology-development-kit/)
- Register ontology with OBO
- Use github for .owl distribution unless ontology is large, then consider:
   - github releases
   - S3
- Document your design patterns
- Read [my Onto-Tips](https://douroucouli.wordpress.com/2019/03/09/ontotips-a-series-of-assorted-ontology-development-guidelines/)

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
   - consider cogs if TSVs must be managed in google sheets
- use JSON for complex data
- use KGX for anything that should be modeled as a KG
- manage metadata in GitHub
- sync repo with Zenodo
- use S3 for larger files
   - release files to zenodo
- Dockerize   
- Use Jupyter notebooks
- Consider manubot

## Documentation

- all code, schemas, analyses, ontologies, MUST be documented
- documentation is a love-letter to your future self
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

## Python

- use flask/fastAPI for web apps
   - don't author OpenAPI directly; derive
- avoid authoring complex data models
   - use LinkML and derived datamodel classes
- use typing
- use dataclasses or pydantic
- use an IDE
   - PyCharm is most popular
- TODO: Best practice for
   - test framework
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
- don't
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

## Portability

- it should be easy for anyone to install from any of our repos
- everything should run on macos or linux
- provide a Docker image for anything complex
- use standard installation idioms

## Key specialized libraries and command line tools

- ontobio, for ontologies and associations
- kgx
- odk and robot, for ontologies

## Collaboration

- we are a collaborative group, reach out if you have issues
   - join relevant channels on bbop and other slacks
- make things easier for those who follow you
   - if someone answers a question for you, update the relevant guide to make it clearer for others
- follow codes of conduct
- be constructive in any criticism

## General Principles

- DRY: Don't Repeat Yourself
- Don't boil the ocean
- Avoid perfectionism; iterate on solutions
- For many tasks, the 80/20 rule may suffice
- More to come...

