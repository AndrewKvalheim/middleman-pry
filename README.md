# middleman-pry

[![Gem Version][gem-version-badge]][gem-version]
[![Build Status][build-status-badge]][build-status]

Replaces [Middleman's][middleman] built-in console with [Pry][], à la
[pry-rails][].

## Installation

Install the gem:

```ruby
# Gemfile

gem 'middleman-pry'
```

```console
$ bundle install
```

and activate the extension:

```ruby
# config.rb

activate :pry
```

## Usage

Start the Middleman console like normal:

```console
$ middleman console
```

You should find yourself in an interactive Pry session in the context of your
Middleman app:

```console
middleman:~$ cd sitemap.resources.first
middleman:Middleman::Sitemap::Resource$ ls
Middleman::Sitemap::Resource#methods:
  add_metadata     blog_controller=   instrument  request_path  url
  app              destination_path   logger      source_file
  binary?          destination_path=  metadata    store
  blog_controller  ext                path        template?
Middleman::Blog::BlogArticle#methods:
  blog_data     default_summary_generator  previous_article  summary
  blog_options  inspect                    published?        tags
  body          lang                       render            title
  date          next_article               slug
middleman:Middleman::Sitemap::Resource$ url
=> "/use-pry-as-the-middleman-console/"
```


  [build-status]: https://travis-ci.org/AndrewKvalheim/middleman-pry
  [build-status-badge]: https://travis-ci.org/AndrewKvalheim/middleman-pry.svg?branch=master
  [gem-version]: https://badge.fury.io/rb/middleman-pry
  [gem-version-badge]: https://badge.fury.io/rb/middleman-pry.svg
  [middleman]: http://middlemanapp.com/
  [pry]: http://pryrepl.org/
  [pry-rails]: https://github.com/rweng/pry-rails
