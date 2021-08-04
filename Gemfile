source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '6.0.0'
# Use mysql as the database for Active Record
gem 'mysql2', '0.4.10'

# Note: You MUST use 4.0.9 or greater for Rails 3.2.10+
gem "friendly_id", "~> 5.1.0"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'roo', '~> 2.3.0'
gem 'kaminari'
gem 'ancestry'

# Use Unicorn as the app server
gem 'unicorn'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'

  gem 'rails-erd'
  gem 'listen'
end


gem 'sinatra', github: 'sinatra/sinatra', branch: 'master'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry'
  gem 'database_cleaner'
  gem 'faker', '1.9.1'
  gem 'rspec'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-json_expectations'
  gem 'rspec-mocks'
  gem 'rspec-rails'
  gem 'shoulda-matchers', '~> 3.1'

  gem 'factory_bot_rails', require: false
  gem 'simplecov', '~> 0.17.0', require: false
  gem 'simplecov-lcov', require: false
end

gem 'coveralls', require: false
gem 'undercover'
