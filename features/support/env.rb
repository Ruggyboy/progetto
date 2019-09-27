
require 'capybara'
require 'capybara/cucumber'
require_relative 'cucumber/rails'
require 'capybara/rails'
require 'capybara/dsl'

require 'selenium/webdriver'


$port = 3000

#Capybara.app_host = '<localhost>:<port>'
#Capybara.app_host = '127.0.0.1:3000'
Capybara.configure do |config|
  config.run_server = true
  #Capybara.default_host = "<localhost>:<port>"
  config.default_driver = :selenium
  #config.app = "make sure this isn't nil"
  #config.app_host = "<hostname>:#{$port.to_s}"
  config.app_host = "127.0.01:#{$port.to_s}"
  config.server_port = $port
end

#To add chrome webdriver do the following in your machine
#chmod +x chromedriver
#sudo mv chromedriver /usr/local/share/
#sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
#sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
#Register chrome as default Capybara webdriver
Capybara.register_driver :firefox do |app|
  # optional
  client = Selenium::WebDriver::Remote::Http::Default.new
  # optional
  #client.timeout = 120
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :http_client => client)
end
#set default js driver
Capybara.javascript_driver = :firefox

#Include headless
require_relative 'headless'


=begin
require 'cucumber/rails'
require_relative '../step_definitions/module'

# Capybara defaults to CSS3 selectors rather than XPath.
# If you'd prefer to use XPath, just uncomment this line and adjust any
# selectors in your step definitions to use the XPath syntax.
# Capybara.default_selector = :xpath

# By default, any exception happening in your Rails application will bubble up
# to Cucumber so that your scenario will fail. This is a different from how
# your application behaves in the production environment, where an error page will
# be rendered instead.
#
# Sometimes we want to override this default behaviour and allow Rails to rescue
# exceptions and display an error page (just like when the app is running in production).
# Typical scenarios where you want to do this is when you test your error pages.
# There are two ways to allow Rails to rescue exceptions:
#
# 1) Tag your scenario (or feature) with @allow-rescue
#
# 2) Set the value below to true. Beware that doing this globally is not
# recommended as it will mask a lot of errors for you!
#
ActionController::Base.allow_rescue = false

# Remove/comment out the lines below if your app doesn't have a database.
# For some databases (like MongoDB and CouchDB) you may need to use :truncation instead.
begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

# You may also want to configure DatabaseCleaner to use different strategies for certain features and scenarios.
# See the DatabaseCleaner documentation for details. Example:
#
#   Before('@no-txn,@selenium,@culerity,@celerity,@javascript') do
#     # { except: [:widgets] } may not do what you expect here
#     # as Cucumber::Rails::Database.javascript_strategy overrides
#     # this setting.
#     DatabaseCleaner.strategy = :truncation
#   end
#
#   Before('not @no-txn', 'not @selenium', 'not @culerity', 'not @celerity', 'not @javascript') do
#     DatabaseCleaner.strategy = :transaction
#   end
#

# Possible values are :truncation and :transaction
# The :transaction strategy is faster, but might give you threading problems.
# See https://github.com/cucumber/cucumber-rails/blob/master/features/choose_javascript_database_strategy.feature
Cucumber::Rails::Database.javascript_strategy = :truncation
=end
