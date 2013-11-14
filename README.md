# middleman-pry

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

You should find yourself in a Pry session in the context of your Middleman app:

```
$ ls
Middleman::Configuration::Global#methods:
  config  method_missing  respond_to?  set  settings
Hooks#methods: run_hook
Middleman::CoreExtensions::Extensions::InstanceMethods#methods:
  activate  extensions
Middleman::CoreExtensions::Request::InstanceMethods#methods:
  call   current_path   halt  mime_type  process_request  req=     send_file
  call!  current_path=  map   not_found  req              request  use
Middleman::CoreExtensions::FileWatcher::InstanceMethods#methods: files
Middleman::CoreExtensions::Data::InstanceMethods#methods: data
Middleman::CoreExtensions::Rendering::InstanceMethods#methods:
  current_engine   locate_layout    render_individual_file  template_extensions
  current_engine=  options_for_ext  render_template         wrap_layout
  fetch_layout     render           resolve_template
Middleman::Sitemap::Extensions::RequestEndpoints::InstanceMethods#methods:
  endpoint  endpoint_manager
Middleman::Sitemap::Extensions::Proxies::InstanceMethods#methods:
  proxy  proxy_manager
Middleman::Sitemap::Extensions::Ignores::InstanceMethods#methods:
  ignore  ignore_manager
Middleman::Sitemap::Extensions::Redirects::InstanceMethods#methods:
  redirect  redirect_manager
Middleman::Sitemap::InstanceMethods#methods:
  current_page  current_resource  sitemap
Middleman::CoreExtensions::Routing#methods: page  with_layout
Padrino::Helpers::OutputHelpers#methods:
  block_is_template?  concat          concat_safe_content  content_for?
  capture             concat_content  content_for          yield_content
Padrino::Helpers::TagHelpers#methods: input_tag  safe_content_tag  tag
Padrino::Helpers::AssetTagHelpers#methods:
  favicon_tag  flash_tag   image_tag               mail_to   stylesheet_link_tag
  feed_tag     image_path  javascript_include_tag  meta_tag
Padrino::Helpers::FormHelpers#methods:
  button_tag          file_field_tag            radio_button_tag
  button_to           form_for                  search_field_tag
  check_box_tag       hidden_field_tag          select_tag
  csrf_token_field    hidden_form_method_field  submit_tag
  email_field_tag     image_submit_tag          telephone_field_tag
  error_message_on    label_tag                 text_area_tag
  error_messages_for  number_field_tag          text_field_tag
  field_set_tag       password_field_tag        url_field_tag
  fields_for          phone_field_tag
Padrino::Helpers::FormatHelpers#methods:
  distance_of_time_in_words  h!              sanitize_html      truncate
  escape_html                highlight       simple_format      truncate_words
  escape_javascript          js_escape_html  strip_tags         word_wrap
  h                          pluralize       time_ago_in_words
Padrino::Helpers::RenderHelpers#methods: partial  render_partial
Padrino::Helpers::NumberHelpers#methods:
  number_to_currency    number_to_percentage   number_with_precision
  number_to_human_size  number_with_delimiter
Padrino::Helpers::Breadcrumbs#methods: breadcrumbs
Middleman::Application#methods:
  after_build           build?              full_path           logger
  after_configuration   build_config        helpers             ready
  after_render          cache               initialized         root
  before                configure           inspect             root_path
  before_configuration  development?        instance_available  source_dir
  before_render         development_config  instrument          to_s
#<Module:0x000000017cd980>#methods: template_data_for_file
#<Module:0x00000001509f78>#methods:
  asset_path   auto_find_proper_handler     auto_tag      form_tag      url_for
  asset_stamp  auto_javascript_include_tag  capture_html  link_to
  asset_url    auto_stylesheet_link_tag     content_tag   page_classes
#<Module:0x000000018b2e68>#methods: lorem  placekitten
self.methods: __pry__
instance variables:
  @_endpoint_manager  @_proxy_manager     @_template_extensions
  @_files_api         @_redirect_manager  @extensions
  @_ignore_manager    @_sitemap
locals: _  __  _dir_  _ex_  _file_  _in_  _out_  _pry_  resource
$
```


  [middleman]: http://middlemanapp.com/
  [pry]: http://pryrepl.org/
  [pry-rails]: https://github.com/rweng/pry-rails
