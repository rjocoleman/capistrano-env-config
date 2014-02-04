# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-env-config/version'

Gem::Specification.new do |gem|
  gem.name          = 'capistrano-env-config'
  gem.version       = CapistranoEnvConfig::VERSION
  gem.authors       = ['Robert Coleman']
  gem.email         = ['github@robert.net.nz']
  gem.description   = %q{Dotenv configuration loading for Capistrano stages}
  gem.summary       = %q{Dotenv configuration loading for Capistrano stages}
  gem.homepage      = 'https://github.com/rjocoleman/capistrano-env-config'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'capistrano', '~> 3.0'
  gem.add_dependency 'dotenv', '~> 0.9'
end
