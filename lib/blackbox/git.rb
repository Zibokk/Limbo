# encoding: utf-8
module Blackbox::Git

  ShaParseError = Class.new Blackbox::Error
  extend self

  # Public: Fetches and caches the git sha of the remote server.
  #
  # environment - The symbol of the environment.
  #
  # Examples
  #
  #   remote_git_sha(:staging)
  #   # => '62e59db2e8f52d0a0e666aa222cf08adf8a0b361'
  #
  # Returns a String of the remote sha.
  def remote_git_sha(environment)
    @remote_git_shas ||= {}
    @remote_git_shas[environment] ||= ShaGetter.sha_for_environment(environment)
  end

  # ShaGetter is an internal class designed to:
  #  1. understand the base url for an environment
  #  2. fetch the html of that base url
  #  3. parse the html looking for an html comment
  #     which contains the git sha of code deployed
  #     to that server
  #  4. retun that git sha
  class ShaGetter < Struct.new(:environment)

    # Public/Internal: To be used by Blackbox::Git.remote_git_sha.
    #
    # environment - The symbol of the environment.
    #
    # Examples
    #   ShaGetter.sha_for_environment(:staging)
    #
    # Returns a String of the remote sha.
    def self.sha_for_environment(environment)
      new(environment).sha_for_environment
    end

    # Internal: To be used by ShaGetter.sha_for_environment.
    #
    # Examples
    #   ShaGetter.new(:staging).sha_for_environment
    #
    # Returns a String of the remote sha.
    def sha_for_environment
      sha_from_html(homepage_html)
    end

    private

    # Internal: Returns a sha found in an HTML comment from a string of html.
    #
    # This will raise a ShaParseError if a sha cannot be found within the html body
    #
    # html - The String of html.
    #
    # Examples
    #
    #   sha_from_html("<html>some html…</html>")
    #   # => 'A SHA WITHIN HTML'
    #
    # Returns a String of 40 characters.
    def sha_from_html(html)
      match_data = html.body.match(/<!--\n([a-z0-9]{40})\n/)
      raise ShaParseError.new("Sha not found in #{environment} environment.") unless match_data
      match_data[1]
    end

    # Internal: fetches html from a an environment base url.
    #
    # Examples
    #
    #   homepage_html
    #   # => "<html>some html…</html>"
    #
    # Returns a String of html.
    def homepage_html
      url = URI.parse base_url_for_environment
      basic_auth_options = { user: url.user, password: url.password }
      RestClient.get url.host, basic_auth_options
    end

    # Internal: get the url for an environment.
    #
    # Examples
    #
    #   base_url_for_environment
    #   # => 'http://change:ozpLP0cLIlWy7X@www.staging-change.org'
    #
    # Returns a String representing a url.
    def base_url_for_environment
      Blackbox::Configuration.new[:application_base_urls][environment]
    end
  end

end
