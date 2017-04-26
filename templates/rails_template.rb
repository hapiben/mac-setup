gem_group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rubocop', require: false
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'awesome_print'
  gem 'factory_girl_rails'
end

gem_group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller'
end

gem_group :test do
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'vcr'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers'
  gem 'launchy'
  gem 'webmock'
  gem 'simplecov', require: false
end

run 'bundle install'

if yes? 'Do you wish to generate a root controller? (y/n)'
  name = ask('What do you want to call it?').to_s.underscore
  generate :controller, "#{name} show"
  route "root to: '#{name}\#show'"
  route "resource :#{name}, controller: :#{name}, only: [:show]"
end

generate 'rspec:install'