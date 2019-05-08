# frozen_string_literal: true

require 'coveralls'
Coveralls.wear_merged!('rails')
require 'cucumber/rails'
require 'webdrivers'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it.'
end

Webdrivers::Chromedriver.version = '2.42'

chrome_options = %w[no-sandbox disable-popup-blocking disable-infobars auto-open-devtools-for-tabs]

# chrome_options << 'headless'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: chrome_options
  )
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

Selenium::WebDriver.logger.level = :error 

Capybara.javascript_driver = :selenium
Cucumber::Rails::Database.javascript_strategy = :truncation

World(Warden::Test::Helpers)

Before { Warden.test_mode! }
After { Warden.test_reset! }
