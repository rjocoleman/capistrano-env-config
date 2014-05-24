# Capistrano::env-config

Loads a `.env` file in the same directory as your Capfile. Entries are automatically loaded as environment variables and can be accessed in Capistrano as `ENV['VAR']` e.g.

```ruby
# .env
GITHUB_TOKEN='foobar'


# deploy.rb

set :scm, 'git'
set :branch, 'master'
set :repo_url, 'https://github.com/rjocoleman/capistrano-env-config'
set :git_http_username, ENV['GITHUB_TOKEN']
```

Also supports stages e.g. `.env.staging` or `.env.production`. `.env` files are loaded sequentially with the current stage first i.e. `.env.staging` first and then `.env`. If variables exist in both the stage and generic env file only the __first__ is loaded (the stage) and not overwritten.

Compatible with Capistrano 3+ only.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano', '~> 3.1'
    gem 'capistrano-env-config'

And then execute:

    $ bundle install

## Usage

    # Capfile
    require 'capistrano/env-config

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
