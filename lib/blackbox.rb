require "cucumber/formatter/unicode"
require "capybara/cucumber" unless ENV["RACK_ENV"] == "test"
require "active_support/ordered_options"
require "selenium-webdriver"

require "blackbox/error"
require "blackbox/setup"
require "blackbox/configuration"
require "blackbox/facebook"
require "blackbox/cli"
require "blackbox/presence_hash"

# Public: Configuration and global state of the blackbox test environment.
module Blackbox
  extend self
  extend Blackbox::Setup

  # Public: The application environment, e.g. "staging".
  attr_accessor :environment

  # Public: The browser used when testing.
  attr_accessor :browser

  # Public: The locale used to run the application.
  attr_accessor :locale

  # Public: An object to manage global state of test variables/data.
  attr_accessor :test_variables

  # Internal: Configuration details loaded from config.yml.
  attr_accessor :config

  # Internal: A flag indicating whether or not a Facebook object has been
  #   initialized.
  attr_accessor :facebook_initialized

  # Public: Sets up configuration data specific to test run. This method should be called
  #   once before any other usage of the Blackbox module.
  #
  # Returns nothing.
  def setup
    self.config = Configuration.new

    self.environment = (ENV["TEST_ENVIRONMENT"] || "staging").downcase.to_sym
    self.browser = (ENV["BROWSER"] || "chrome").downcase.to_sym
    self.locale = (ENV["LOCALE"] || "en-US").downcase.to_sym

    reset_test_variables
    set_up_capybara
  end

  # Public: Cleans up test data created in the environment during the build.
  #
  # Returns nothing.
  def teardown
    clear_cookies
    reset_test_variables
    facebook.destroy_all_test_users if facebook_initialized
  end

  # Public: A wrapper for the Facebook Graph API and manager for state.
  def facebook
    self.facebook_initialized = true
    @facebook ||= Facebook.new(config[:facebook_credentials][environment])
  end

  # Public: Provides the URLs of test petitions to use based on the current environment.
  #
  # Returns an Array of String URLs.
  def test_petition_urls
    config[:test_petition_urls][environment]
  end

  # Public: Outputs a warning message in the production environment.
  #
  #   message - The String message to output.
  #
  # Returns nothing.
  def production_warning(message)
    CLI.new.say(message, :yellow) if environment == :production
  end

  # Public: Clears cookies in the current driver's browser.
  #
  # Returns nothing.
  def clear_cookies
    Capybara.current_session.driver.browser.tap do |browser|
      if browser.respond_to?(:manage)
        browser.manage.delete_all_cookies
      elsif browser.respond_to?(:clear_cookies)
        browser.clear_cookies
      end
    end
  end
end
