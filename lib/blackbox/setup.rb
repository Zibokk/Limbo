module Blackbox::Setup

  # Internal: Initializes the test_variables attribute to an
  #   ActiveSupport::OrderedOptions object with a nested options object
  #   for each key as defined in config.yml under :test_variables.
  def reset_test_variables
    self.test_variables = Blackbox::PresenceHash.new

    config[:test_variables].each do |type|
      test_variables.send("#{type}=", Blackbox::PresenceHash.new)
    end
  end

  # Internal: Configures Capybara for the blackbox test environment.
  #
  # Returns nothing
  def set_up_capybara
    Capybara.default_selector = :css
    Capybara.default_driver = browser == :phantomjs ? :poltergeist : :selenium
    Capybara.javascript_driver = Capybara.default_driver
    Capybara.default_wait_time = 30
    Capybara.app_host = config[:application_base_urls][environment]

    register_driver
  end

  # Internal: Determines and configure Capybara to use the correct driver
  #   based on the browser.
  #
  # Returns nothing.
  def register_driver
    options = {
      browser: browser
    }

    # Sauce Labs browsers require extra options.
    options = sauce_labs_capabilities(options) if browser.to_s =~ /^sauce/

    # TODO: Figure out how to get ChromeDriver to log to log/chromedriver.log.

    # Configure the Capybara driver.
    if browser == :firebug
      # If using Firebug, configure Firefox to use a custom-built version of
      # Firebug, due to incompatibilities between the newest Firebug and
      # Firepath.
      Capybara.register_driver(:selenium) do |app|
        firebug_path = patched_firebug_path

        profile = Selenium::WebDriver::Firefox::Profile.new
        profile.add_extension(firebug_path)
        profile.add_extension(File.expand_path("../../files/firexpath097.xpi", __FILE__))
        Capybara::Selenium::Driver.new(app, profile: profile)
      end
    elsif browser == :phantomjs
      Capybara.register_driver(:poltergeist) do |app|
        Capybara::Poltergeist::Driver.new(app)
      end
    else
      Capybara.register_driver(:selenium) do |app|
        Capybara::Selenium::Driver.new(app, options)
      end
    end
  end

  # Internal: Returns the file path to a custom-built Firebug extension,
  #   building it if necessary.
  #
  # Returns nothing.
  #
  # Raises a RuntimeError if the extension failed to build.
  def patched_firebug_path
    @firebug_path ||= begin
      tmp_name = "firebug-fix-#{Time.now.utc.to_f}"
      tmp_dir = "/tmp/#{tmp_name}"

      source_path = File.expand_path("../../files/firebug184.xpi", __FILE__)
      destination_path = "#{tmp_dir}.xpi"

      script = <<-SCRIPT
        mkdir #{tmp_dir}
        cd #{tmp_dir}
        unzip #{source_path}
        sed -i '' -e 's/currentVersion", ""/currentVersion", "99"/' defaults/preferences/firebug.js
        zip -r #{destination_path} *
      SCRIPT

      `#{script}`
      raise "Failed to generate firebug.xpi" unless $? == 0

      destination_path
    end
  end

  # Internal: Determines remote capabilities for the Capybara driver
  #   based on the browser.
  #
  #   options - A Hash of options used to register a Capybara driver.
  #
  # Returns the modified options Hash.
  def sauce_labs_capabilities(options)
    settings = config[:sauce_labs][:browsers][options[:browser]]

    capabilities = Selenium::WebDriver::Remote::Capabilities.send(settings[:preset]).tap do |c|
      c.platform = settings[:platform]
      c.version = settings[:version] if settings[:version]
    end

    options[:browser] = :remote
    options[:desired_capabilities] = capabilities
    options[:url] = config[:sauce_labs][:base_url] + "/wd/hub"
    options
  end

  # Internal: Open a log file for writing with the given name.
  #
  #   name - The base file name of the log.
  #
  # Returns a File opened for writing.
  def logfile(name)
    File.open(File.expand_path("../../log/#{name}.log", __FILE__), "w")
  end

end
