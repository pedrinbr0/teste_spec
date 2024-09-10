require_relative '../config/environment'

Bundler.require(:default, Rails.env)

require 'rspec/rails'
require 'factory_bot_rails'
require 'database_cleaner'
require 'capybara/rails'
require 'capybara/rspec'

RSpec.configure do |config|

  Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

  config.include RequestsHelper, type: :request

  config.include FactoryBot::Syntax::Methods

  # Configure DatabaseCleaner
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # Configure Capybara
  Capybara.configure do |config|
    config.default_driver = :rack_test
    config.app_host = 'http://localhost:3000'
  end

end
