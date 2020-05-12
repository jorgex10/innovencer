# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'devise', '~> 4.7', '>= 4.7.1' # Flexible authentication solution for Rails with Warden.
gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease.
gem 'pg', '~> 1.2', '>= 1.2.3' # Pg is the Ruby interface to the PostgreSQL RDBMS.
gem 'puma', '~> 4.1' # Use Puma as the app server.
gem 'rails', '~> 6.0.3' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'.
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets.
gem 'seedbank', '~> 0.5.0' # Adds simple rake commands for seeding your database.
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster.
gem 'webpacker', '~> 4.0' # Transpile app-like JavaScript.

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker', '~> 2.11'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 4.3'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'rubocop', '~> 0.83.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
