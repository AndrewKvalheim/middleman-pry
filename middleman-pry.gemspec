$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'middleman-pry/version'

Gem::Specification.new do |gem|
  # Identity
  gem.name     = 'middleman-pry'
  gem.version  = Middleman::Pry::VERSION
  gem.summary  = 'Use Pry as the Middleman console.'
  gem.homepage = 'https://github.com/AndrewKvalheim/middleman-pry'

  # License
  gem.license  = 'MIT'

  # Authorship
  gem.authors  = ['Andrew Kvalheim']
  gem.email    = ['Andrew@Kvalhe.im']

  # Content
  gem.files         = `git ls-files -z`.split("\0")
  gem.test_files    = gem.files.grep(/^(features|fixtures)\//)
  gem.require_paths = ['lib']

  # Dependencies
  gem.platform              = Gem::Platform::RUBY
  gem.required_ruby_version = '~> 2.0'
  gem.add_runtime_dependency 'middleman', '>= 3.3', '< 5'
  gem.add_runtime_dependency 'pry', '~> 0.9'

  # Development dependencies
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rdoc'
  gem.add_development_dependency 'travis'
  gem.add_development_dependency 'websocket-native'
  gem.add_development_dependency 'yard'
end
