# Website for bbop

This should be viewed on http://berkeleybop.github.io

This repo is only for maintainers

## How-To (for bbop members)

### Setup

Ensure you have Ruby >= 3.0.0 installed (see [rbenv](https://github.com/rbenv/rbenv) for managing multiple Ruby versions) as well as [bundler](https://bundler.io/). Install project dependencies with:

```
bundle install
```

### Development

To run the development server with live reloading run:

```
bundle exec jekyll serve --livereload
```

Edit the menu: see _data/sidebar_doc.yml

Each page has its own directory containing an index.md file (this was to preserve URLs from the old site)

You can seed this:

```
cd software
../util/add-entry My-Awesome-Tool
git add my-awesome-tool/*
git commit
```

## Theme

It is based on [tom johnson's theme](https://github.com/tomjohnson1492/documentation-theme-jekyll)

Liberally adapted from https://charite.github.io

## Things that break the search function

 - tab characters


Please read [this documentation](http://idratherbewriting.com/documentation-theme-jekyll/mydoc/mydoc_search_configuration.html)!
