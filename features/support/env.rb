require 'cucumber_statistics/autoload'
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'rspec'



Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_selector = :css
##Capybara.default_selector = :xpath
##Capybara.ignore_hidden_elements = true
##!Capybara.ignore_hidden_elements = false
##Capybara.visible_text_only = true

module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end

World(Capybara::DSL, Helpers)