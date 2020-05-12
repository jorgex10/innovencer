source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'.
gem 'puma', '~> 4.1' # Use Puma as the app server.
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets.
gem 'webpacker', '~> 4.0' # Transpile app-like JavaScript.
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster.
gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease.
gem 'pg', '~> 1.2', '>= 1.2.3' # Pg is the Ruby interface to the PostgreSQL RDBMS.
gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching; required in config/boot.rb

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
