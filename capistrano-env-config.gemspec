# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-env-config'
  spec.version       = '0.3.0'
  spec.authors       = 'Robert Coleman'
  spec.email         = 'github@robert.net.nz'
  spec.description   = %q{Dotenv configuration loading for Capistrano stages}
  spec.summary       = %q{Dotenv configuration loading for Capistrano stages}
  spec.homepage      = 'https://github.com/rjocoleman/capistrano-env-config'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3.0'
  spec.add_dependency 'dotenv', '~> 2.0'
end
