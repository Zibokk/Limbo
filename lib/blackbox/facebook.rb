require "fb_graph"

module Blackbox
  # Public: A wrapper for the Facebook API, used to make Graph API calls and to
  #   manage state across multiple steps.
  class Facebook
    # Public: A Facebook Graph API object.
    attr_accessor :client
    # Public: An array of generated Facebook test users.
    attr_accessor :test_users

    # Public: Initializes the client and test_users attributes.
    #
    #   credentials - A Hash of Facebook application credentials to use for Graph API calls.
    #
    # Returns a new Blackbox::Facebook object.
    def initialize(credentials)
      self.client ||= FbGraph::Application.new(credentials[:id], secret: credentials[:secret])
      self.test_users = []
    end

    # Public: Creates a new Facebook test user and stores it the test_users array.
    #
    #   options - A Hash of options passed on to FbGraph::Application#test_user!
    #
    # Returns the created test user.
    def create_test_user(options = {})
      client.test_user!(options).tap { |user| test_users << user }
    end

    # Public: Destroys all Facebook test users.
    #
    # Returns nothing.
    def destroy_all_test_users
      test_users.each(&:destroy)
      self.test_users = []
    end
  end
end
