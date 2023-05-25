source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.8', '>= 5.2.8.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Interactors are used to encapsulate your application's business logic.
# Each interactor represents one thing that your application does.
# https://github.com/collectiveidea/interactor
gem 'interactor', '~> 3.0'

# active_model_serializers
# ActiveModel::Serializers allows you to generate your JSON in an object-oriented and convention-driven manner.
# @see {https://github.com/rails-api/active_model_serializers}
gem 'active_model_serializers', '~> 0.10.0'

# zip-zip:
# Simple adapter to let all your dependencies use RubyZip v1.0.0.
# @note will load compatibility for old rubyzip API.
# @see {https://github.com/orien/zip-zip}
gem 'zip-zip', '~> 0.3'

# malloc_trim:
# Trim memory allocation to give memory back to the OS.
# @see {https://github.com/tessi/malloc_trim}
gem 'malloc_trim', '~> 0.1.0'
gem 'rails_malloc_trim', '~> 0.2'

# creek:
# Ruby library for parsing large Excel files.
# @see {https://github.com/pythonicrubyist/creek}
gem 'creek', '~> 2.5.2'

# fast_excel:
# Ultra Fast Excel Writer for Ruby
# @see {https://github.com/Paxa/fast_excel}
gem 'fast_excel', '~> 0.3.0'

# rubyzip:
# A ruby library for reading and writing zip files.
# @see {https://github.com/rubyzip/rubyzip}
gem 'rubyzip'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'pry-rails', '~> 0.3.8'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'rspec-rails', '3.8.0'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
  gem 'factory_bot_rails', '4.11.1'
  gem 'faker', '1.9.1'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'guard-rspec', '4.7.3'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
