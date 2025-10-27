---
layout: page
published: true
title: Best Practice
---

This is the best practice / house style guide for the BBOP group. Inspired by / cribbed from [Knocean practice](https://github.com/knocean/practises/) and other sources.

Source: [berkeleybop/berkeleybop.github.io/blob/master/best_practice](https://github.com/berkeleybop/berkeleybop.github.io/blob/master/best_practice)

We are a diverse group working on many different projects with
different stakeholders and sets of collaborators. Nevertheless we
strive to follow a set of core best practices so we can be most
efficient and develop the highest quality code, ontologies, standards,
schemas, and analyses.

This document may be overwhelming at first but as you become more familiar with projects it should become second nature.
If there is anything you don't understand, **ask on slack**!

## Git and GitHub

- use git ubiquitously
   - [commit early, commit often](https://deepsource.io/blog/git-best-practices)
   - perfect later!
   - you should always be working on a branch, so don't worry about breaking things
   - make a PR for your branch - mark as draft if not ready
- Make repos public by default
- Use standard repo layouts
   - choose a copier template
       - [monarch-project-copier](https://github.com/monarch-initiative/monarch-project-copier) for code-oriented projects
       - AI GUI projects using [`nicegui-app-copier`](https://github.com/knowledge-Graph-Hub/nicegui-app-copier)
       - AI GitHub integrations using [`github-ai-integrations`](https://github.com/ai4curation/github-ai-integrations)
       - LinkML projects using [linkml-project-copier](https://github.com/linkml/linkml-project-copier)
   - don't reinvent
   - look at exemplars
- Include standard files:
   - README.md
   - LICENSE (BSD3 or Apache preferred for software)
   - CONTRIBUTING.md
   - CODE_OF_CONDUCT.md (see for example [kgx CoC](https://github.com/biolink/biolink-model/blob/master/CODE_OF_CONDUCT.md)
   - Changes.md
   - .gitignore
   - Makefile or equivalent
   - see below for more specific recommendations for specific kinds of repos
- use GitHub
    - Like GitLab in principle, but GitHub has network effect
    - prefer to work on the main repo, not forks, but defer to project-specific guidelines
- Read our [GitHub Overview](https://docs.google.com/presentation/d/1xiALnyqKJ_cAF0hmR99v1FdQ-CC7WW33/edit#slide=id.gb4c63b0a22_0_0)
- Use GitHub issues
    - in general you should always be working to a ticket assigned to you
    - try to assign every issue to somebody
    - try to have a single assignee / responsible person
    - tag people if necessary
       - note: if you tag me with @cmungall it's likely I won't see it. alert me to a ticket via slack if I am required
    - use GitHub's default labels: bug, question, enhancement, good first issue, etc.
    - set up standard issue templates (helps ensure tickets are auto-assigned)
    - When creating issues:
       - give a meaningful issue title
       - word title as a bug, e.g. "under condition X, Y fails" or a request, e.g. "add option A to method B"
       - give issue actionable descriptions, make it clear when an issue can be closed
       - see [Seth's suggestions for creating awesome issues](https://github.com/kltm/how-to-write-an-awesome-issue)
- use GitHub Pull Requests
    - read the [obook PR review guide](https://oboacademy.github.io/obook/howto/review-pull-request/)
    - mark as draft until ready for review, then assign reviewers
    - description should link to an issue ("Resolves #1234") to automatically close issue when PR is merged
        - otherwise you have to clean up issues manually
    - update description as needed
    - always look over your commits before making a PR
        - are there unexpected changes? You should only see YOUR changes
        - Is it adding files unexpectedly? Some git clients are eager to do this
        - are some changes not recognizable as yours? **Be careful not to clobber**
        - follow repo-standard practice for rebase etc
    - AVOID:
       - making PRs too large
       - mixing orthogonal concerns in one PR. Generally 1 PR = 1 issue
       - mixing in formatting changes on sections of the code unrelated to the semantic changes you are making
       - working on a PR for too long a time without feedback from others
       - working on "invisible" branches. ALWAYS make a PR, ALWAYS push. You can mark as draft!
    - give PRs a meaningful title and description
       - remember: titles will be used when auto-making release notes
- use GitHub Milestones to plan releases
- use GitHub Releases to tag versions and attach binaries
    - use semver (except for ontologies)
    - use the auto-generate release notes feature
        - corollary: write informative PR titles and never commit on main
        - if making a non-patch release, select the previous minor/major to diff from
- use GitHub Pages for simple static content and documentation
    - prefer the `docs/` directory option
    - See exemplars: [OAK](https://incatools.github.io/ontology-access-kit/index.html), [Biolink Model](https://biolink.github.io/biolink-model/)
- use GitHub Projects ("project boards") for coordinating issues and PRs
    - three columns:
        - To do: for manager to fill and prioritize
        - In progress: for developer to keep up-to-date
        - Ready for review: for manager to empty
    - order of preference for cards: PR link, issue link, text
- set up GitHub actions to do CI
    - Migrate if you are on an old travis repo
    - All changes should be on PRs thus validated
    - main branch should never ever be failing
    - EVERY repo should have actions and PR checking
- set up GitHub teams
    - default to public membership
    - make sure it is clear who has permission to merge PRs
- set up badges
    - always: CI
    - pypi, downloads, codecov, zenodo, ...
- Configure the "About" (see gear icon on right)
    - use standard topics
        - [biolink](https://github.com/topics/biolink)
        - [linkml](https://github.com/topics/linkml)
        - [obofoundry](https://github.com/topics/obofoundry)
        - [monarchinitiative](https://github.com/topics/monarchinitiative)
        - [geneontology](https://github.com/topics/geneontology)
- Orgs
    - define a standard topic (see above)
    - include a .github
    - examplar: [github.com/linkml](https://github.com/linkml)
    - pin repos
- make sure all relevant artefacts are checked in
    - use `git status` and `.gitignore`
    - in general avoid checking in derived products (but see below)
    - avoid checking in .xslx files (use TSVs; or consider cogs instead)
- versioning
    - do not check in files with version numbers e.g. `foo.v1.txt` into GitHub - git does versioning for you
    - use the GitHub release mechanism
    - use ISO-8601 or semver schemes (see guidelines on specific repo types below)
- tend your repos
    - remove cruft such as obsolete files (GitHub preserves history)
    - avoid random stuff at top level
    - keep README in sync
    - avoid using spaces in filenames
    - always use standard suffixes (e.g. .tsv, .txt, .md)
    - kabob-case-is-a-good-default.txt. See [filenames](https://developers.google.com/style/filenames) in google developer guide
    - Don't rename files and commit - use "git mv" instead, so that the history of the file is preserved
- use topics and "star" relevant repos
    - https://github.com/topics/linkml
    - https://github.com/topics/obofoundry
    - https://github.com/topics/geneontology
    - https://github.com/topics/monarchinitiative
    - always star your own repos
    - star your colleagues and collaborator's repos
- tips
    - the `gh` [github cli client](https://github.com/cli/cli) is very useful, e.g. `gh pr Software`:
    - Nico recommends gh Desktop

### Code-centric Repos

- Use an existing repo from a group member as template for best practice, e.g.,
   - [kgx](https://github.com/biolink/kgx/)
   - [linkml](https://github.com/linkml/linkml)
   - [OAK](https://github.com/INCATools/ontology-access-kit)
   - Or better: [monarch](https://github.com/monarch-initiative/monarch-project-copier)
       - [LinkML project copier](https://github.com/linkml/linkml-project-copier) template
       - AI GUI projects using [`nicegui-app-copier`](https://github.com/knowledge-Graph-Hub/nicegui-app-copier)
       - AI GitHub integrations using [`github-ai-integrations`](https://github.com/ai4curation/github-ai-integrations)
       - LinkML projects using [linkml-project-copier](https://github.com/linkml/linkml-project-copier)
- Include a README.md
   - provide sufficient context
   - don't boil the ocean - put reference material in a separate reference guide
   - include examples and use examples as tests
- Create reference documentation using RTD/Sphinx
   - let inline docstrings in Python do most of the work for you
   - read [writethedocs](https://www.writethedocs.org/guide/writing/beginners-guide-to-docs/)
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
      - use [GitHub actions to trigger releases to PyPI](https://packaging.python.org/guides/publishing-package-distribution-releases-using-github-actions-ci-cd-workflows/)
      - see [nmdc-schema](https://github.com/microbiomedata/nmdc-schema/tree/main/.github/workflows) as exemplar
   - make release notes automatically [see github guide](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)
      - relies on using PRs with well-described titles
   - always have multiple owners of a pypi package on the pypi site
   - use standard semver, start from 0.1.0, move to 1.0.0 when stable
   - consider setting up a trusted publisher and deploying to pypi automatically with a GH action
      - create a pending publisher: https://docs.pypi.org/trusted-publishers/creating-a-project-through-oidc/#github-actions
      - make a GH action to use that pending publisher: https://pgjones.dev/blog/trusted-plublishing-2023/  (on first use, the pending publisher becomes a trusted publisher)
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

### Schema/Standards-centric Repos, Data and metadata repos

- Use [LinkML](https://github.com/linkml/linkml)
- Create repo from [LinkML template](https://github.com/linkml/linkml-project-copier)
- Examples:
   - NMDC
   - MIxS
   - GFF3 linkml
   - [chemkg/chemrof](https://github.com/chemkg/chemrof)
- Register with w3id.org
- Include comprehensive examples
- Use LinkML mkdocs framework
- Understand the difference between [OWL-centric and KG-centric modeling](https://douroucouli.wordpress.com/2019/03/14/biological-knowledge-graph-modeling-design-patterns/)
- include mappings to [Biolink Model](https://biolink.github.io/biolink-model/)
- always include examples
   - integrate these with documentation
   - integrate these with unit tests
- also include counter-examples
   - data deliberately designed to fail validation
   - check validation correctly identifiers these in github actions
- [enable zenodo syncing](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content)
- For repos that have data:
   - consider a dashboard (see [semantic dashbaord patterns](https://docs.google.com/document/d/1ld73pVz_BIH22jRBZuV0RVDeSiuGyQpD1u_F9Yv9gg0/edit#))

### Ontology-centric Repos

- Use [ODK seed](https://github.com/INCATools/ontology-development-kit/)
- Register ontology with OBO if appropriate
   - include detailed metadata
   - include all products
   - include descriptive material in markdown
   - Exceptions:
      - application ontologies
      - ontologies that deliberately not OBO-esque
- Register non OBOs with Bioportal + w3id
- Use GitHub for .owl distribution unless ontology is large, then consider:
   - GitHub releases
   - S3
   - See Nico's application ontology tutorial
- Follow group exemplars: Uberon, Mondo, GO, ENVO, CL, PATO, BERO, PhenIO
   - but be aware each has their quirks
- distribute useful products
   - distribute [SSSOM](https://mapping-commons.github.io/sssom/)
   - always distribute an .obo
   - always distribute a obo .json
   - distribute a kgx file (NEW)
   - distribute a rdftab/semsql sqlite file (NEW)
- use a sensible source format (foo-edit.owl)
   - .obo is best for diffs but less expressive and gotchas for CURIEs
   - functional syntax is often preferred
   - for template-based ontologies, much of the source may be TSVs
- [enable zenodo syncing](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content)
- Understand issues relating to git conflicts with ontologies
   - .obo as source mitigates some of these
   - See [this thread](https://anatomy-and-cell-onto.slack.com/archives/C01A7LRAKN1/p1626433475018000?thread_ts=1626331368.016700&cid=C01A7LRAKN1)
   - See [this post](https://douroucouli.wordpress.com/2014/03/30/the-perils-of-managing-owl-in-a-version-control-system/)
      - many issues have since been resolved but unfortunately some remain

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
- Use TSVs as default
   - make pandas-friendly
   - use unix newline characters, not dos
   - use human readable but computationally friendly column headers
      - NO ALL CAPS
      - alphanumeric characters preferred
      - spaces or underscores as word separators OK, but underscores preferred for formal formats
   - [csvkit](https://csvkit.readthedocs.io/) is your friend
- ALL TSVs MUST have data dictionaries
   - use LinkML (see above)
- check in small-mid size data files (<10m)
   - consider [cogs](https://github.com/ontodev/cogs) if TSVs must be managed in google sheets
- use JSON for complex data
- use KGX for anything that should be modeled as a KG
- use descriptive filenames
- manage metadata in GitHub
- [enable zenodo syncing](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content)
- use S3 for larger files
   - release files to Zenodo
- Dockerize
- Use Jupyter notebooks
- Consider [Manubot](https://manubot.org/)
- Other recommended best practices
   - [datadryad](https://datadryad.org/stash/best_practices)

## Development Environment Setup

* Code Editors:
   * vscode
   * pycharm
       * get professional, we will pay
       * GitHub copilot can be purchased as well, and is an excellent addition to a pycharm environment.
* Keyboard Shortcuts
  * Command palette: `Cmd/Ctrl + Shift + P`
  * Search for file in project: `Cmd/Ctrl + P`
  * Open integrated terminal in VSCode: `Cmd/Ctrl + ~`
  * Open settings page: `Cmd/Ctrl + ,`
  * Set up custom keymap bindings
   * Mac
     * Code > Preferences > Keyboard Shortcuts > +`
       * Type in the key combination you want to use and assign it to an action of your choice
        * For ex., `Cmd/Ctrl + i` as a shortcut for selecting the Python interpreter

* Essentials
  * [Git configuration](https://www.jcchouinard.com/install-git-in-vscode/)
    * Set username: `git config --global user.name "YOUR_USERNAME"`
    * Set password: `git config --global user.email "YOUR_EMAIL@EXAMPLE.COM"`
  * Workspace setup
    * Make sure you have correctly [selected the Python interpreter](https://code.visualstudio.com/docs/python/environments)
  * Save workspace in order to open a specific view of the project directory
    * `File > Save Workspace As`
    * `File > Open Workspace From File`

* Useful Extensions
  * [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
    * Python IntelliSense
    * Linting
    * Debugging
    * Code navigation
    * Formatting
    * Refactoring
  * [AutoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)
    * Docstring for Python methods
  * [`black`](https://github.com/psf/black)
    * Opinionated Python code formatter
  * [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
    * Visualize code authorship
  * [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
    * Human friendly comments
  * [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv)
    * Highlight columns in csv and tsv files
    * Transforms and filtering using querying language
  * [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
    * Keyboard shortcuts
    * Table of contents
    * Auto preview
  * [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
    * Formatting YAML, JSON
    * But primarily an opinionated formatter for frontend web code like JS, TS, etc.
  * [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
    * YAML validation
    * Auto completion
    * Hover support
    * Useful while writing LinkML schemas
  * [vs-code-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
    * Beautiful icons
  * [Austin VS Code](https://marketplace.visualstudio.com/items?itemName=p403n1x87.austin-vscode)
    * Code profiler
    * Can be used when trying to optimize Python codebase

## Simple Websites

- GitHub pages favored over google sites over wikis
- Manage and author content as markdown, managed in github, with PRs as for code
- Google Analytics
   - Example GA 4 conversion and walkthrough info at https://github.com/berkeleybop/bbops/issues/28#issuecomment-1712154894
- avoid manually authoring anything that can be derived from metadata
   - examplars: obofoundry.github.io, this site
- use CC-BY 4.0 or the CC0 public domain declaration
- Examplars:
   - [LinkML splash page](https://linkml.io/)
   - [Phenopackets splash page](http://phenopackets.org/)
   - Cell Ontology splash page

## Documentation

- See google guide on [Writing inclusive documentation](https://developers.google.com/style/inclusive-documentation)
    - Avoid ableist language
    - Avoid unnecessarily gendered language
    - Avoid unnecessarily violent language
- all code, schemas, analyses, ontologies, MUST be documented
- documentation is a love-letter to your future self
- understand [the Diataxis four-way distinction](https://www.divio.com/blog/documentation/): tutorial, how-to, reference, explanation
    - exemplar: [OBOOK](https://oboacademy.github.io/obook/)
    - exemplar: [LinkML docs](https://linkml.io/)
- [google API documentation guide](https://developers.google.com/style/api-reference-comments)
- have strategies to avoid staleness and documentation getting out of sync
- use inline documentation
    - publish via appropriate framework (RTD for code, mkdocs for schema, etc)
    - follow appropriate style guide
    - use and test docstring in python
        - https://docs.python.org/3/library/doctest.html
- examples, examples, examples
   - fenced examples in markdown docs
   - example standalone scripts
   - example Jupyter notebooks
   - double up: unit tests can serve as examples and vice versa
   - See linkml-run-examples framework
- Use existing templates
   - [monarch-project-copier](https://github.com/monarch-initiative/monarch-project-copier) for code-oriented projects
   - [linkml-project-copier](https://github.com/linkml/linkml-project-copier) for schema projects
   - [AI agent GUi copier template](https://github.com/knowledge-Graph-Hub/nicegui-app-copier)
   - ODK for ontology projects
   - kghub template for KG projects
- use Markdown as default
   - RST for Sphinx/Code projects
   - Google docs acceptable for initial brainstorming
   - Don't use Wikis (mediawiki, GitHub wiki)
   - Manage markdown docs as version control
   - publish as static site (RTD, mkdocs, etc)

## Coding/Python

- Python is the default language; use others as appropriate
   - javascript/typescript for client-side
       - don't implement domain/business logic in js. use python + APIs
       - use typescript
       - generate typescript datamodels using linkml gen-typescript
   - Rust for speed
       - should always have PyO3 wrappers
       - follow semsimian GH actions for wheels
   - Scala for performance reasoners or anything requiring owlapi
   - Historically we used Java for anything requiring OWLAPI but being phased out
- Why Python?
   - ubiquitous, cross-platform
   - good for scripting, interactive development
   - strong ecosystem of libraries for almost anything
   - Easy for developers to pick up
   - Most bioinformaticians know it
   - use for anything more than about 10 lines of Bash/Perl
   - use Python 3.8+
   - Ensure github actions tests 3.9, 3.11
- Conform to the group style guide, or at least *some* style guide
   - [pep-0008](https://www.python.org/dev/peps/pep-0008/) for Python
   - use type annotations [PEP484](https://www.python.org/dev/peps/pep-0484/)
   - [google style guide](https://developers.google.com/style)
   - We are inspired by [knocean/practices/python](https://github.com/knocean/practises/tree/master/python) but differ in some places
      - We make use of OO as appropriate - just don't go overboard like in java
   - Follow conventional variable naming
      - Example: https://docs.fast.ai/dev/abbr.html
- See the [Working with Python Environments](/best_practice/python_environments) guide for details on installing Python versions and managing virtual environments.      
- All repos should use [uv](https://github.com/astral-sh/uv)
  - Set up this way: `uv init --package my-project-name`
  - OR use [`linkml-project-copier`](https://github.com/linkml/linkml-project-copier) for schema-centric repos
  - follow standard layouts, with code in `src/`
- Linting/formatting:
  - Use [black](https://github.com/psf/black) and [flake8](https://pypi.org/project/flake8/) and ruff
- Test Runners
  - To automate building and testing distributions in multiple Python versions
  - [tox](https://tox.wiki/en/latest/)
  - DE FACTO: Github hosted runner via [Github Actions](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-python)
- CLI development
  - [click](https://click.palletsprojects.com/en/latest/)
- Testing
  - [unittest](https://docs.python.org/3/library/unittest.html)
  - DE FACTO: [pytest](https://docs.pytest.org/en/latest/)
- Test coverage
  - [Coverage.py](https://pypi.org/project/coverage/)
  - [codecov](https://about.codecov.io/language/python/)
- document all public classes, methods, functions
   - Always Use [type annotations](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/#type-annotations)
   - Always provide docstrings
      - ReST (reStructuredText) >>  numpy-style docstrings or google style >> nothing
      - SOME standard is always better than none
      - Be sure to set up your IDE for automatic docstring generation
- use flask/fastAPI for web apps
   - NEVER author OpenAPI directly; ALWAYS derive
   - we are exploring GraphQL frameworks like strawberry.rocks
- use dataclasses or pydantic
   - for DAOs, ALWAYS derive from linkml
   - avoid authoring data models directly in python
- list comprehensions >> lambdas
- use fstrings; never write java-style python
- ALWAYS use typing
   - makes code more understandable
   - allows code completion in PyCharm etc
   - helps find bugs
- use an IDE
   - PyCharm or VS is equally popular in the group
- ETL/ingest
   - follow existing exemplar repos
   - Read Chris' [10 simple rules for semantic ETL](https://docs.google.com/document/d/1Bgsyo-Z1oxEfxdNGB3KDM_NHfXYqdcXJIUd_j3iibi4/edit#)
- use `requests` for URL calls
- Always provide a CLI
   - separate CLI logic from core logic
   - Read [CLIG guidelines](https://clig.dev/)
   - See also [Documenting command-line syntax ]https://developers.google.com/style/code-syntax) in google style guide
   - Python: use click
   - design for composability
   - provide shortforms for common options
   - [Display help text when passed no options, the -h flag, or the --help flag](https://clig.dev/#help)
   - use de-facto standards
      - `-i`, `--input`
      - `-o`, `--output`
      - `-h`, `--help`
   - always use dashes as separators, NOT underscores
      - click will make corresponding python vars with underscores
   - Follow exemplars
      - ROBOT
      - SSSOM
      - OAK
      - linkml
- Always write unittests for CLIs
   - see OAK for examples
  - Profiling:
    - [cProfile](https://docs.python.org/3/library/profile.html) and SnakeViz are useful for profiling Python code
     ```bash
    # Generate the profile results:
    python -m cProfile -o output.prof my_program.py
    
    #  View them:
    pipx run snakeviz output.prof
    ```
- Examplars:
   - [sssom-py](https://github.com/mapping-commons/sssom-py)
   - [linkml](https://github.com/linkml/linkml)
   - [OAK](https://github.com/incatools/ontology-access-kit)
- Learning resources
   - [Charlie's Recommended Python Programming Videos](https://www.youtube.com/playlist?list=PLPFmTfhIBiumfYT3rsa35fHJxabB78er1)
   - [OBOOK - Open Biological and Biomedical Ontologies Organized Knowledge](https://oboacademy.github.io/obook/)

## Web APIs

- Authoring
   - FastAPI >> Flask
   - Seperate business logic from API code
      - this should be independently testable
- Testing
   - use `fastapi.testclient`
   - follow [GO exemplar](https://github.com/geneontology/go-fastapi/blob/main/tests/unit/test_bioentity_endpoints.py)
- Accessing
   - Use python requests library (unless a higher level lib is available)
   - Do not construct URL strings yourself - use `params` instead
   - for non-trivial tasks consider building a reusable client library
   - use a client library if it already exists!
   - examplars: OAK bioportal implementation
   - when querying a sparql endpoint
      - sparqlfun > sparqlwrapper > requests > curl
      - if constructing sparql is necessary
         - use a query builder rather than string manipulation

## Shell

### Programming

- bash/sh

### Personal

- Use [ohmyz](https://ohmyz.sh/)

## Database Engines

- Current preferred stack
   - sqlite or postgres (normalized/write)
   - solr (denormalized/read)
   - that's it
- BUT: use whatever is appropriate for the job
   - blazegraph/joseki for ttl
   - neo4j for KGs
   - Postgresql for SQL db server
       - never use non-open SQL db solutions
       - Some legacy apps may use MySQL but Pg is preferred
   - sqlite for lightweight tabular
   - mongo for docs
   - avoid vendor lock-in
       - use generic sparql 1.1 API vs triplestore specific APIs
   - solr for searchable / denormalized / analytics
      - always use golr patterns
      - read [semantic columnar store patterns](https://docs.google.com/document/d/1GoTZd4HSHI9q48Q6WUR4eDgBy0WgwsXcfVBihs_l0CU/edit)
- always have a schema no matter what the task
    - always __author__ in LinkML
    - __translate__ to SQL schema, JSON-Schema, Solr schema etc
    - familiarize yourself with the tools to do this
- SQL vs other DB engines
   - this is an evolving area
   - see [Knocean SQL guide](https://github.com/knocean/practises/tree/master/sql)

## LLMs

- [ontogpt](https://github.com/monarch-initiative/ontogpt)
- [curategpt](https://github.com/monarch-initiative/curate-gpt)
- For command line usage and direct Python usage:
    - https://llm.datasette.io/en/stable/
    - also follow Simon's blog for *practical* guides to LLMs for engineers:
        - https://simonwillison.net/
        - 
- code assistance
    - many of us use copilot + vscode/pycharm; see onboarding for how to charge
    - gpt-4 works better for de-novo
- OpenAI accounts
    - see onboarding doc on how to get added to Mungall group account


## Handy developer and command line tools

- runoak
- GNU Make -- see [Knocean guide](https://github.com/knocean/practises/tree/master/make)
- cogs
- odk
- [q](http://harelba.github.io/q/) -- query TSVs via SQL
- csvkit
- jq/yq
- robot
- bash; small scripts only
- pandoc
- Docker
- editor of your choice

## Programming Libraries

- Data science
   - this is a fast changing field so recommendations here are general/loose
   - generally prefer Python >> R >> other languages for data sciences
   - we frequently use tensorflow, scikitlearn, keras
   - scikit-learn
   - catboost, xgboost
   - pandas
       - TSV >> CSV
       - parquet or sqlite for large files
       - use `#` for header comments
       - always have a data dictionary in LinkML
   - always be working in a github repo (see below)
   - notebooks:
       - seaborn for plotting
       - Use notebooks for:
           - generating figs for paper
           - exploration
       - NEVER use notebooks for
           - core logic (extract into separate lib with tests)
           - ETL
           - anything that should be run in a pipeline
       - all notebooks MUST be reproducible
           - check small files into github
           - reproducible Makefile or snakemake for obtaining other files
           - ideally test all notebooks via gh-actions
   - KGs
      - [kgx](https://github.com/biolink/kgx)
      - [BMT](https://github.com/biolink/biolink-model-toolkit)
      - [EnsmallenGraph](https://github.com/AnacletoLAB/ensmallen_graph), (Rust + Python bindings), fast graph ML
      - [Embiggen](https://github.com/monarch-initiative/embiggen) graph ML (e.g. node2vec), and some other things like word2vec
      - [NEAT](https://github.com/Knowledge-Graph-Hub/NEAT) is a Python wrapper for reproducible graph ML in a YAML-driven way
      - also exploring pykeen ampligraph
- Follow FAIR in a *meaningful* way
   - data dictionaries with LinkML
   - follow identifier best practice
- Ontologies
   - Read the [OAK guide](https://incatools.github.io/ontology-access-kit/guide/index.html)
   - Use OAK for everything
      - ontobio is deprecated for non-GO specific tasks
      - OWLAPI (JVM) -- only where absolutely necessary
      - beware of using rdflib and RDF-level libraries for working with OWL files, too low level (and slow)
   - access [Ubergraph](https://github.com/incatools/ubergraph) through OAK
   - access [semsql](https://github.com/incatools/semantic-sql) through OAK
   - [obographviz](https://github.com/incatools/obographviz/) (js)
   - never, ever use XML parsers to parse RDF/XML
   - don't every write a new obo format parser
   - obographs json direct access sometimes OK
- NER/NLP
   - Read Harry's awesome [caufieldjh/awesome-bioie](https://github.com/caufieldjh/awesome-bioie) list
   - fast changing but some tools to consider:
      - ontorunNER (which wraps OGER)
      - BERT for language models (experimental)
      - Note we are now wrapping more of this functionality in OAK
      - now subsumed by LLMs
   - join the monarch nlp slack channel
- Shell commands
   - [sh](https://github.com/amoffat/sh) > subprocess

## File formats, languages, and standards

- General
   - TSVs for columnar data
       - always have a data dictionary (use LinkML)
       - make it pandas-friendly
       - meaningful column names
       - SSSOM is an exemplar
       - understand [TidyData](https://vita.had.co.nz/papers/tidy-data.pdf) and Codd's [normal forms](https://en.wikipedia.org/wiki/Database_normalization#Normal_forms) and when to use them
   - hand-author YAML over JSON (+ follow schema)
   - Use JSON-LD / YAML-LD as appropriate
       - understand JSON-LD contexts
       - get context for free with LinkML
   - Turtle for some purposes
   - RDF/XML as default for OWL
- Ontologies
   - Use OAK to access everything
   - OWL
   - [OBO JSON](https://douroucouli.wordpress.com/2016/10/04/a-developer-friendly-json-exchange-format-for-ontologies/)
   - consider obo format deprecated. Exception: easier to maintain edit file as obo for git diff/PR purposes
   - COB as upper ontology, but also pay attention to biolink
   - Always use official PURLs for downloads
      - the OBO page gives the list of products. E.g. [obofoundry.org/ontology/pato](http://obofoundry.org/ontology/pato)
- Mappings (ontology or otherwise)
   - SSSOM with skos predicates
- Cookiecutters for starting a new project.
  - General-purpose projects using [`monarch-project-template`](https://github.com/monarch-initiative/monarch-project-copier)
  - AI GUI projects using [`nicegui-app-copier`](https://github.com/knowledge-Graph-Hub/nicegui-app-copier)
  - AI GitHub integrations using [`github-ai-integrations`](https://github.com/ai4curation/github-ai-integrations)
  - LinkML based projects using [`linkml-project-copier`](https://github.com/linkml/linkml-project-copier)
  - Ontology Access Kit (`oaklib`) plugin projects using [`oakx-plugin-cookiecutter](https://github.com/INCATools/oakx-plugin-cookiecutter)
- KGs
   - biolink
   - kgx >> rdf* >> rdf
   - make available as:
      - RDF dump
      - Neo4J dump
      - sparql endpoint (consider putting into larger endpoint and segregating with NGs)
      - neo4j endpoint
      - KGX dump
      - KGX summary stats
- Schemas
   - everything must have a schema, including:
      - all TSVs should have data dictionary
      - JSON/YAML
      - KGs
      - OWL ontologies and OWL instance graphs
   - Understand basic concepts:
      - normalized vs de-normalized
      - identifiers and URIs
      - closed-world vs open-world
      - schema vs ontology
   - Always author schemas in linkml
      - derive alternate representations (e.g. json-schema)
   - JSON-schema for JSON-centric projects (never author, always derive from LinkML)
   - ShEx or SHACL for ontology-centric (try and derive from LinkML)
   - Don't use kwalify any more
   - Always have a LinkML schema even when using:
      - python dicts
      - open-ended JSON/YAML
      - RDF
      - Neo4J
      - ad-hoc TSVs
   - Include mappings:
      - map to biolink
- Versioning
   - Semantic Versioning (semver) by default
       - software MUST use semver
       - schemas SHOULD use semver, but OBO-style may sometimes be appropriate
   - ISO-8601 OBO style for OBO ontologies
   - use GitHub releases for versioning as appropriate
       - always use the autofill feature to make release notes and to name releases
       - for software follow the group github-action best practice to auto-release to pypi
   - release versions to appropriate repository/archive
- Compression
   - use `.gz` instead of `.zip`
   - if compressing multiple files in an archive, use `.tar.gz`, not `.zip`
   - Rememeber compressed files are not diffable in git
   - For very large files consider distributing gz files via S3 or zenodo rather than in GitHub
       - remember: if a repo has 10 x 50m files that change every release, the repo will be 10g in size in 20 releases
   - As a general rule of thumb, think very carefully before committing files > 1m to github
       - exceptions for existing best practice e.g. odk
       - ask if unsure
- Text
   - markdown by default
      - frontmatter metadata where appropriate
      - track in version control
   - use .rst for sphinx sites where autodoc features are needed
   - don't use wikis or github wikis except where precedent is set
- APIs
   - RESTfulness
      - true REST may be too high a barrier
      - RPC-style (i.e. swagger/openAPI) may be fine
   - All web APIs should have OpenAPI exploration interface
   - derive OpenAPI from Python code
      - fastapi > flask >>> others
      - considering GraphQL
   - Must have Docker container
   - Deprecated: Use grlc or sparqlfun to make APIs from sparql endpoints

- CURIEs and IRIs
   - Read [McMurry et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5490878/pdf/pbio.2001414.pdf)
   - [Prefixmaps](https://github.com/linkml/prefixmaps) (a Python library for retrieving semantic prefix maps) is now our source of truth for all things prefix/namespace related
   - Take the time to read ALL docs on [bioregistry.io](https://bioregistry.io)
   - always use CURIEs for IDs
       - CURIEs + prefixmap >> URIs >>>> ad-hoc
   - always use prefixes registered in [bioregistry.io](https://bioregistry.io)
   - understand at a broad level the different registries:
       - http://identifiers.org
       - http://n2t.net -- synced(?) with identifiers.org but broader context
       - http://bioregistry.io/
          - has a lot of advantages over id.org: more transparent, github metadata based, lightweight
       - https://github.com/prefixcommons/biocontext
          - we developed this as an "overlay" on existing registries
   - have an explicit JSON-LD context or prefixes yaml file
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
   - use ISO-8601
   - use ISO-8601
   - use ISO-8601
   - use ISO-8601
   - never, ever write a date in non-ISO-8601

## Portability

- it should be easy for anyone to install from any of our repos
- everything should run on macos or linux
- provide a Docker image for anything complex
- use standard installation idioms

## Key specialized libraries and command line tools

- [OAK](https://github.com/INCATools/ontology-access-kit), for ontologies
- [kgx](https://github.com/biolink/kgx)
- [ODK](https://github.com/INCATools/ontology-development-kit) and [ROBOT](https://github.com/ontodev/robot), for ontologies
- ontorunNER for NER

## Building Ontologies

- ontologies are for users, not ontologists
  - OWL and description logic is necessary for building robust ontologies, but needn't be exposed
  - Minimize philosophy
  - avoid unnecessary abstractions
- ontologies should have annotations
   - annotations, as in the sense used by curators
   - ontologies without annotations are generally of limited use, avoid working on them
- learn tools and best practice for robust ontology engineering
  - Read [Onto-Tips](https://douroucouli.wordpress.com/2019/03/09/ontotips-a-series-of-assorted-ontology-development-guidelines/)
  - Use and understand [ODK](https://github.com/INCATools/ontology-development-kit)
  - Use [ROBOT](https://github.com/ontodev/robot)
- Take the [OBO Academy training](https://oboacademy.github.io/obook/)
  - work on the components on your own
  - attend the Monarch tutorials
- use the ontologies we work on as examplars
   - GO
   - Uberon
   - Mondo
   - Phenotype Ontologies
   - ENVO
   - RO
   - CL
- follow [OBO best practice and principles](https://obofoundry.org/principles/fp-000-summary.html)
   - ontologies should be open
   - if OBO is underspecified, follow the examples of projects done in this group
      - NEW: see ontology-metadata in OAK
      - oio >> IAO
      - liberal axiom annotations
      - key annotation properties: synonyms, definitions, mappings
      - See [documentation on uberon synonyms](https://github.com/obophenotype/uberon/wiki/Using-uberon-for-text-mining), this is an exemplar for us
   - Programmatic generation
      - linkml-owl
      - [dosdp](https://github.com/INCATools/dead_simple_owl_design_patterns]) OR robot template
      - always use the more appropriate tool for the job
- include comprehensive definitions clear to biologists
   - [read definitions guide](https://douroucouli.wordpress.com/2019/07/08/ontotip-write-simple-concise-clear-operational-textual-definitions/)
- understand [compositional patterns](https://douroucouli.wordpress.com/2019/06/29/ontotip-learn-the-rector-normalization-technique/)
- avoid overmodeling
- Document ontologies
   - [document design decisions](https://douroucouli.wordpress.com/2019/06/16/ontotip-clearly-document-your-design-decisions/)
   - write clear operational definitions
   - document your design patterns
      - Watch [design pattern presentation](https://douroucouli.wordpress.com/2020/11/02/aligning-design-patterns-across-multiple-ontologies-in-the-life-sciences/)
      - [DOSDP repo](https://github.com/INCATools/dead_simple_owl_design_patterns])
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
   - use oak lexmatch

## Collaboration

- we are a collaborative group, reach out if you have issues
   - join relevant channels on bbop and other Slack workspaces
   - questions always welcome but make best effort to see if information available in group reference guides
   - don't struggle alone!
   - others are likely to either have similar questions/frustrations to you, or will have faced them in the past
- questions are always welcome but always check standard sources first
   - for programming questions, search [Stack Overflow](https://stackoverflow.com/)
   - for questions regarding group or collaborator tools, is it in the FAQ?
- make it easy for people to help you
   - be concise, yet provide sufficient relevant context
   - make it actionable
       - Discouraged: X doesn't work
       - Encouraged: when I do A, I get result B, but I expect C
   - create issues with  concise, actionable titles
   - your problem should be reproducible as far as possible
   - ideally contribute a a test case following idioms of appropriate repo (learn how to do this)
- make things easier for those who follow you
   - the same questions often come up repeatedly
   - if someone answers a question for you, update the relevant guide (FAQ etc) to make it clearer for others
   - upvote answers on Stack Overflow you find useful
   - give thumbs up to helpful comments
   - star repos you find useful
- follow codes of conduct
- be constructive in any criticism
- use your Berkeley Lab account for email, calendars
- keep your calendar up to date, this facilitates scheduling meetings
- Slack
   - avoid `@channel` unless necessary
   - discussion about tickets OK but decisions and key points must be recorded in ticket
- use GitHub for requests
- Use GitHub for requesting terms from ontologies etc
   - [Data mapping guide: selecting and requesting terms from ontologies, data models, and standards](https://douroucouli.wordpress.com/2021/07/03/how-select-and-request-terms-from-ontologies/)

## Google docs/slides/sheets hygiene

- Read [Julie's awesome intro to Google Drive](https://docs.google.com/presentation/d/1NqwMrJs5b95i4sLEfpKWtGNepNh8UCSOp6uFtq_DYic/edit#slide=id.p)
- Read [Data Organization in Spreadsheets for Ecologists](https://datacarpentry.org/spreadsheet-ecology-lesson/ from datacarpentry
- Read [Data Organization in Spreadsheets](https://www.tandfonline.com/doi/full/10.1080/00031305.2017.1375989) by Bronan and Woo
    - be consistent
    - write dates like YYYY-MM-DD
    - put just one thing in a cell
    - no not merge cells
    - organize the data as a single rectangle (with subjects as rows and variables as columns, and with a single header row)
    - create a data dictionary
    - do not include calculations in the raw data files
    - do not use font color or highlighting as data
    - choose good names for things
    - make backups
    - use data validation to avoid data entry errors
    - save the data in plain text files
- Use google docs/slides over Microsoft/Apple/Desktop
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
    - use H1/H2/etc. for headers (don't just style normal text)
    - always have outline mode on (list-like icon near top left)
    - assume the reader has outline mode on
    - rarely need for a TOC
- For google sheets / excel
    - never manually color code or use font/strikethrough. Always add an explicit field and use conditional formatting
    - always have a schema, even if it is a flat data dictionary. linkml-model-enrichment will derived one
    - favour TSV+github over google sheets
       - workflows clearly favor sheets
       - when using sheets, use [cogs](https://github.com/ontodev/cogs)
    - follow TSV guidelines for google sheets
- Use formatted templates where appropriate (grants, papers)
- Use Paperpile for citations / reference management (you have access via the Lab)
- Give documents meaningful names (e.g., not just "meeting")--assume that most people will find the doc via search rather than by going through the folder hierarchy
    - don't use camelcase or underscores in google doc names, it hinders search
- organize google docs in the relevant folder depending on what project is funding the work
- understand how navigation works for google docs
- make docs and folders viewable by all by default, unless sensitive
- include links to slides of general relevance from project repos
- reuse slides from existing slide decks, but provide attribution
- Tips
   - [search operators](https://seosly.com/google-drive-search-operators/)

## Best practices for meetings
- See [Best practices for writing a good meeting reminder](https://docs.google.com/presentation/d/169D2P1jKLyqXysOBMO7aehDI2UvY1BoS/edit#slide=id.p2)
- Use a rolling agenda/notes doc, rather than one doc per meeting
    - most recent first
    - ISO-8601 >> human readable dates >> anything else
    - The auto @today feature is useful
- always have a google doc for every meeting you are in
- record decisions
- include a link to the rolling doc in calendar invites
- include the Zoom / videoconference link in the rolling notes doc

## DevOps

- [12 factor app](https://www.12factor.net/)

## General Principles

- DRY: Don't Repeat Yourself
   - but avoid over-abstraction and frameworkitis
- various 10 simple guides:
   - [10 simple rules of quick and dirty scientific programming](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008549)
- Always reuse
   - we probably have a Python library for it
   - reuse general design patterns
   - GitHub templates
   - follow exemplar repos
       - [kgx](https://github.com/biolink/kgx) and [linkml](https://github.com/linkml/linkml) for general python
       - [kg-covid-19](https://github.com/Knowledge-Graph-Hub/kg-covid-19) for ETL
   - try especially hard not to reinvent what someone in the group or our collaborator has done
- Avoid perfectionism
   - iterate on solutions
   - smaller batches of incremental progress >> long delays on perfect solution (that may turn out to be flawed)
- For many tasks, the 80/20 rule may suffice
   - Don't boil the ocean
   - beware of rabbit holes
- More to come...

## Dates

![img](https://imgs.xkcd.com/comics/iso_8601_2x.png)
