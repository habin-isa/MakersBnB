# Set the environment to "test"
ENV['ENVIRONMENT'] = 'test'

# Bring in the contents of the `app.rb` file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

# Require all the testing gems
require 'capybara'
require 'capybara/rspec'
require 'pg'
require 'rspec'

# Tell Capybara to talk to BookmarkManager
Capybara.app = MakersBnB

RSpec.configure do |config|
  config.before(:each) do
      connection = PG.connect(dbname: 'bork_bnb_test')
      connection.exec("TRUNCATE borks;")
  end
end
