ENV["RACK_ENV"] ||= "test"

require "bundler"
Bundler.require

require "blackbox"

RSpec.configure do |config|
  config.before do
    silence_warnings { Capybara = double("Capybara").as_null_object }
  end
end
