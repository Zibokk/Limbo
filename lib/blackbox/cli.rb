require "thor"
require "blackbox/configuration"
require "blackbox/syntaxatron"
require 'blackbox/error'
require 'blackbox/git'
module Blackbox
  class CLI < Thor
    default_task :test

    desc "test", "Run the test suite"
    option  :environment,
            desc: "Set the application environment",
            default: "staging",
            aliases: ["-e", "--env"]
    option  :browser,
            desc: "Set the browser to test with",
            default: "chrome",
            aliases: ["-b"]
    option  :locale,
            desc: "Set the application's I18n locale",
            default: "en-US",
            aliases: ["-l", "--loc"]
    option  :wip,
            desc: "Run scenarios tagged as @wip",
            type: :boolean

    def initialize(args=[], options={}, config={})
      super
      @config = Configuration.new
    end

    def test(*args)
      validate_options!(options)

      env = {
        "TEST_ENVIRONMENT" => options[:environment],
        "BROWSER" => options[:browser],
        "LOCALE" => options[:locale],
      }

      parts =   []

      parts <<  "cucumber"
      parts <<  "-c -f pretty -f html"
      parts <<  "-o results/#{options[:environment]}_#{options[:browser]}_#{options[:locale]}.html"
      parts <<  generate_tags(options)
      parts <<  args

      command = parts.flatten.compact.join(" ")

      say command, :green

      if options[:environment].downcase.to_sym == :production
        message = <<-MESSAGE
WARNING: Tests will be run in the production environment.
Pay attention to messages in the output indicating that a resource (petition, user, etc.) has been created.
If you do not see a corresponding message saying the resource has been disabled afterward, you must do it manually."
        MESSAGE
        say message, :red
      end

      exec(env, command)
    end

    desc "environments", "List available application environments"
    def environments
      @config.environments.each { |e| say e }
    end

    desc "browsers", "List available browsers"
    def browsers
      @config.browsers.each { |b| say b }
    end

    desc "smoke", "Run the smoke tests on staging"
    def smoke
      rollout = copy_production_rollout_settings unless ENV["ROLLOUT"] == "false"
      test "-t @smoke" unless rollout == false
    end

    desc "i_just_deployed_to_production", "Runs the production post deploy test suite"
    option :environment,
           desc: "Used to override the default staging environment",
           default: "production"
    def i_just_deployed_to_production
      test
    end

    desc "git_sha", "Returns the git sha of the remote environment"
    option  :environment,
            desc: "Set the application environment",
            default: "staging",
            aliases: ["-e", "--env"]
    def git_sha(*args)
      env = options[:environment].to_sym
      message = "Remote sha for #{env} is #{Blackbox::Git.remote_git_sha(env)}"
      say message, :green
    end

    desc 'console', "Interactive console"
    option  :environment,
            desc: "Set the application environment",
            default: "staging",
            aliases: ["-e", "--env"]
    def console
      require 'blackbox/console'
      Blackbox::Console.crossover.behind_the_back.between_the_legs.slam_dunk!(options)
    end
    map "c" => :console

    private

    # Internal: Check the all options passed have valid values.
    #
    # Returns nothing.
    #
    # Aborts if any option is invalid.
    def validate_options!(options)
      unless @config.environments.include?(options[:environment].downcase.to_sym)
        say "Invalid environment. Run `#{$0} environments` for a list of available environments.", :red
        abort
      end

      unless @config.browsers.include?(options[:browser].downcase.to_sym)
        say "Invalid browser. Run `#{$0} browsers` for a list of available browsers.", :red
        abort
      end
    end

    # Internal: Generates a string of tag options suitable for passing to
    #   cucumber(1). This is essentially a collection of miscellaneous logic
    #   for determining when particular tags should be included or excluded.
    #
    #   options - CLI options, used to determine which tags to use.
    #
    # Returns an Array of Cucumber tag options.
    def generate_tags(options)
      environment = options[:environment].downcase.to_sym
      browser = options[:browser].downcase.to_sym
      locale = options[:locale].downcase.to_sym

      out = []

      # WIP scenarios are enabled by passing --wip to the CLI.
      out << "-t ~@wip -t ~@bug" unless options[:wip]

      # mobile scenarios are exclusive to mobile browsers.
      out << "-t ~@android" unless browser == :android
      out << "-t @android" if browser == :android

      # The production environment should only run features intended for it.
      out << (environment == :production ? "-t @production" : "-t ~@production")

      # If the tests are using Chrome, skip scenarios exhibiting a known ChromeDriver bug.
      out << "-t ~@chromedriver_bug" if browser == :chrome

      # Skip some Safari.
      out << "-t ~@safari_bug" if browser == :safari

      # When testing a non-English locale, don't attempt features known not to be internationalized.
      out << "-t ~" unless locale == :"en-us"

      # Some scenarios assume a standard test user for logging in.
      out << "-t ~@assumes_existing_test_user" if environment == :production

      # Some scenarios assume production data is available.
      out << "-t ~@needs_prod_data" unless [:production, :staging, :chicken].include?(environment)

      # Until the organizations page works in rebrand, skip the org tests
      # out << "-t ~@organizations"

      out
    end

    def copy_production_rollout_settings
      load_copy_rollout_settings
      say "Copying rollout settings from production", :green
      success = Blackbox::CopyRolloutSettings.go.for.it
      if success
        say "Successfully copied rollout settings from production", :green
      else
        say "Failed to copy rollout settings from production. You can 1) Retry or 2) Copy the settings manually, and run `ROLLOUT=false bin/blackbox smoke`", :red
      end
      return success
    end

    def load_copy_rollout_settings
      require 'blackbox/copy_rollout_settings'
    end

  end
end
