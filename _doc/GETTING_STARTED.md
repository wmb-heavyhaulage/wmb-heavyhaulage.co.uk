# Getting Started

## Prerequisites

The site requires the following software to already be installed on a machine
for it to build successfully:

* [Git](http://git-scm.com)
* [Ruby](https://www.ruby-lang.org/en/) >= 1.9.3
* [Bundler](http://bundler.io)

## Clone the repository

```bash
git clone https://github.com/wmb-heavyhaulage/wmb-heavyhaulage.co.uk
cd wmb-heavyhaulage.co.uk
```

## Install other dependencies

```bash
bundle
```

## Build the site

```bash
bundle exec jekyll serve
```

This command will build the site into the `_site` directory, and start a local
web server at http://localhost:4000 for testing. The server will watch for
changes to the site and rebuild it when changes occur. You will have to reload
the website after it has been rebuilt to see the changes take effect. You can
watch the server output to see when this happens, but it should usually take
around 1 second.
