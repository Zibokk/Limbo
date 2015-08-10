require 'capybara'
require 'capybara/dsl'
require 'blackbox/setup'

class Blackbox::CopyRolloutSettings < Blackbox::Syntaxatron

  include Blackbox::Setup
  include Capybara::DSL

  # Load in login_as_qa
  login_page_objects_file = File.expand_path('../../../features/page_objects/login_page_objects.rb', __FILE__)
  class_eval File.read(login_page_objects_file), login_page_objects_file, 1

  attr_accessor :browser

  HOME = "http://www.staging-change.org"

  def it
    setup
    login
    set_settings
    @rollout_settings.values.all?
  end

  private

  # SETUP
  def setup
    @rollout_settings = {experiments: false, rollout: false}
    self.browser = (ENV["BROWSER"] || "chrome").downcase.to_sym
    set_up_capybara
  end

  # LOGIN
  def login
    visit HOME
    login_as_qa_user
  end

  # SET ROLLOUT
  def set_settings
    @rollout_settings.keys.each do |rollout_path|
      visit "#{HOME}/admin/dashboard/#{rollout_path}"
      set_rollout
      @rollout_settings[rollout_path] = ensure_rollout_settings_set
    end
  end

  def set_rollout
    wait_until { page.evaluate_script %{typeof jQuery !== "undefined"} }
    clear_rollout
    turn_on_production_rollout_settings
    ensure_ajax_finished
  end

  def ensure_rollout_settings_set
    visit current_url
    assert_rollout_settings
  end

  def turn_on_production_rollout_settings
    page.execute_script <<-JS
      rollout_flags_that_should_be_on = $('input[type=radio][value=1]').filter(function() {
        return ~#{production_rollout_settings.to_json}.indexOf($(this).attr('name'))
      });
      rollout_flags_that_should_be_on.prop('checked', true).trigger('click');
    JS
  end

  def clear_rollout
    page.execute_script <<-JS
      $('input[type=radio][value=0]:not([checked])').prop('checked', true).trigger('click');
    JS
  end

  def assert_rollout_settings
    page.evaluate_script <<-JS
      $('input[type=radio][value=1]').filter(function() {
        return ~#{production_rollout_settings.to_json}.indexOf($(this).attr('name'))
      }).get().every(function(item) { return $(item).is('[checked]') })
    JS
  end

  def ensure_ajax_finished
    wait_until{ page.evaluate_script('jQuery.active == 0') }
  end

  def production_rollout_settings
    @production_rollout_settings ||= JSON.parse(fetch_production_rollout_settings).keys
  end

  def fetch_production_rollout_settings
    RestClient.get('http://www.change.org/admin/dashboard/rollout_settings_json', params: {super_secret: super_secret})
  end

  def super_secret
    "Change-org-229644a616ee972b5873f2c7964f25b5-#{Time.now.utc.midnight.to_i}"
  end

end
