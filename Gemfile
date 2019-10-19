source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

#ruby '2.3.3'
ruby '2.6.3'
#ruby '2.4.1'

gem 'responders'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
gem 'bootstrap-sass', '3.3.7'
gem 'bootstrap-will_paginate', '~> 0.0.10'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3', '1.4.1'
#gem 'sqlite3', '1.3.13'
gem 'sqlite3'
# Use Puma as the app serverbundl
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails', '4.3.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
#gem 'bcrypt', '~> 3.1.12'
gem 'bcrypt-ruby', '3.1.2'
gem 'faker',          '1.9.1'
gem 'fog-xenserver', '~> 0.3.0'
gem 'bcrypt', '~> 3.1.7'
gem 'devise'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'cancan', '~> 1.6', '>= 1.6.10'
gem 'activesupport', '~> 5.2.3'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  #gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'listen'
end






group :development, :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  #gem 'cucumber', '~> 3.1.0'
  gem 'cucumber', '~> 3.1', '>= 3.1.2'
  gem 'rspec', '~> 3.6'

  #gem 'rspec-core', :github => "rspec/rspec-core"
  #gem "rspec-expectations", :github => "rspec/rspec-expectations"
  #gem "rspec-mocks", :github => "rspec/rspec-mocks"
  #gem "rspec-support", :github => "rspec/rspec-support"
  #gem "rspec-rails", :github => "rspec/rspec-rails"
  gem 'rspec-core'
  gem "rspec-expectations"
  gem "rspec-mocks"
  gem "rspec-support"
  gem "rspec-rails", '~> 3.8'

   gem 'cucumber-rails', :require => false
   #gem 'cucumber-rails'
   #gem 'cucumber-rails', '~> 1.4.2', :require => false
   gem 'cucumber-rails-training-wheels'

   gem 'rails-controller-testing', '1.0.2'
#  gem 'minitest',                 '5.10.3'
#  gem 'minitest',		           '5.11.3'
#  gem 'minitest-reporters',       '1.1.14'
#  gem 'guard',                    '2.14.1'
#  gem 'guard-minitest',           '2.4.6'
   gem 'database_cleaner'
   gem 'launchy', '~> 2.4', '>= 2.4.3'
   gem 'phantomjs'
   gem 'poltergeist'
   gem  'webdrivers'
end







# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
#  gem 'fog', '1.42'
  #gem 'pg' #, '0.20.0'
end

group :development, :test do
  #gem 'rspec-rails', '~> 3.0.0'
  #gem 'rspec-rails',      ">= 2.0.0.beta"
  #gem 'rspec-rails'
  #gem 'rspec-rails', '~> 3.7'
  gem 'factory_girl_rails'
  gem 'selenium-webdriver'
end

gem 'sendgrid'

gem 'geocoder'
gem 'gmaps4rails'
gem 'omniauth-google-oauth2'
gem 'omniauth-facebook'

gem 'dotenv-rails', groups: [:development, :test]
