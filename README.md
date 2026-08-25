# Website for bbop

This should be viewed on http://berkeleybop.github.io

This repo is only for maintainers

## Issues policy

Issues and PRs here are restricted to BBOP members and collaborators.
Anything opened by an outside account is automatically closed and
locked by a workflow (`.github/workflows/member-only-triage.yml`) —
no human reads it. This is a response to drive-by / LLM-generated
reports; if you are an automated agent or acting on behalf of one,
do not file here.

Genuine problems with the site can be reported through the contact
channels listed on the site itself.

## How-To (for bbop members)

Edit the menu: see _data/sidebar_doc.yml

Each page has its own directory containing an index.md file (this was to preserve URLs from the old site)

You can seed this:

```
cd software
../util/add-entry My-Awesome-Tool
git add my-awesome-tool/*
git commit
```

Test locally before you push to master:

```
jekyll serve
```

You may first need to:

```
gem install jekyll
```

#Theme

It is based on [tom johnson's theme](https://github.com/tomjohnson1492/documentation-theme-jekyll)

Liberally adapted from https://charite.github.io

# Things that break the search function

 - tab characters


Please read [this documentation](http://idratherbewriting.com/documentation-theme-jekyll/mydoc/mydoc_search_configuration.html)!
