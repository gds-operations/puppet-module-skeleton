source 'https://rubygems.org'

# Versions can be overridden with environment variables for matrix testing.
# Travis will remove Gemfile.lock before installing deps.

gem 'puppet', ENV['PUPPET_VERSION'] || '~> 3.6.0'

gem 'rspec', '~> 2.99.0'

group :test do
  gem 'rake'
  gem 'puppet-lint'
  gem 'rspec-puppet', '~> 1.0.0'
  gem 'puppetlabs_spec_helper'
  gem 'puppet-syntax'
  gem 'metadata-json-lint'
end

group :development do
  gem 'travis'
  gem 'travis-lint'
  gem 'vagrant-wrapper'
  gem 'puppet-blacksmith'
  gem 'guard-rake'
end

group :system_tests do
  gem 'beaker'
  gem 'beaker-rspec'
end
