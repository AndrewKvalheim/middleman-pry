# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name     = 'middleman-pry'
  gem.version  = '0.0.3'
  gem.platform = Gem::Platform::RUBY
  gem.license  = 'MIT'
  gem.authors  = ['Andrew Kvalheim']
  gem.email    = ['Andrew@Kvalhe.im']
  gem.homepage = 'https://github.com/AndrewKvalheim/middleman-pry'
  gem.summary  = %q{Use Pry as the Middleman console.}

  gem.files         = `git ls-files -z`.split("\0")
  gem.test_files    = gem.files.grep(%r{^(features|fixtures)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'middleman-core', '>= 3.2.2'
  gem.add_runtime_dependency 'pry', '>= 0.9.12'
end
