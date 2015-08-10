require 'pry'
require 'capybara'
require 'capybara/dsl'
require 'blackbox/setup'
module Blackbox
  class Console < Blackbox::Syntaxatron
    attr_accessor :browser
    include Blackbox::Setup
    include Capybara::DSL
    def slam_dunk!(options)
      self.browser = (ENV["BROWSER"] || "chrome").downcase.to_sym
      set_up_capybara
      visit "http://www.#{options["environment"]}-change.org/"
      binding.pry
    end
  end
end
