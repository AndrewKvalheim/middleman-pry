# middleman-pry

[![Gem Version][gem-version-badge]][gem-version]
[![Build Status][build-status-badge]][build-status]

Replaces [Middleman's][middleman] built-in console with [Pry][], à la
[pry-rails][].

## Installation

Add to your `Gemfile`:

```ruby
gem 'middleman-pry'
```

and run `bundle install`.

## Usage

Start the Middleman console like normal:

```shell
$ middleman console
```

You should find yourself in an interactive Pry session in the context of your
Middleman app:

```
#<Middleman::Application::MiddlemanApplication1>$ cd sitemap.resources.first
#<Middleman::Sitemap::Resource>$ ls
Middleman::Sitemap::Extensions::Traversal#methods:
  children          eponymous_directory?      parent
  directory_index?  eponymous_directory_path  siblings
Middleman::Sitemap::Extensions::Proxies::ResourceInstanceMethods#methods:
  get_source_file  proxied_to  proxied_to_resource  proxy?  proxy_to
Middleman::CoreExtensions::FrontMatter::ResourceInstanceMethods#methods:
  content_type  data  ignored?  raw_data
Middleman::Sitemap::Resource#methods:
  add_metadata      destination_path=  metadata      source_file
  app               ext                path          store
  binary?           instrument         render        template?
  destination_path  logger             request_path  url
instance variables:
  @app  @destination_path  @local_metadata  @path  @source_file  @store
#<Middleman::Sitemap::Resource>$
```


  [build-status]: https://travis-ci.org/AndrewKvalheim/middleman-pry
  [build-status-badge]: https://travis-ci.org/AndrewKvalheim/middleman-pry.png?branch=master
  [gem-version]: https://badge.fury.io/rb/middleman-pry
  [gem-version-badge]: https://badge.fury.io/rb/middleman-pry.png
  [middleman]: http://middlemanapp.com/
  [pry]: http://pryrepl.org/
  [pry-rails]: https://github.com/rweng/pry-rails
