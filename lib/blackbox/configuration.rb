module Blackbox
  # Public: A wrapper for data stored in config.yml.
  class Configuration
    # Public: Load data from config.yml.
    #
    # Returns a new Blackbox::Configuration object.
    def initialize
      @data = YAML.load(File.read(File.expand_path("../../../config.yml", __FILE__)))
    end

    # Public: Look up n object from the internal data storage.
    #
    #   key - The key to fetch from the data Hash.
    #
    # Returns the value at the given key.
    def [](key)
      @data[key]
    end

    # Public: A list of all environments.
    #
    # Returns an array of Symbol environments.
    def environments
      @data[:application_base_urls].keys
    end

    # Public: A list of all browsers.
    #
    # Returns an array of Symbol browsers.
    def browsers
      [:android, :safari, :phantomjs, :chrome, :firefox, :firebug, :ie] + @data[:sauce_labs][:browsers].keys
    end
  end
end
