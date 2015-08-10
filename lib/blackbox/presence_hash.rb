# BlackBox::PresenceHash
# This hash is designed to raise an error when:
#   getting a value that is nil
#   setting a value to nil
module Blackbox
  class PresenceHash < ActiveSupport::OrderedOptions

    NilValueError = Class.new Blackbox::Error

    def []=(key, value)
      raise NilValueError.new("seting nil value for key: #{key}") if value.nil?
      super
    end

    alias_method :unsafe_check, :[]
    def [](key)
      super || raise(NilValueError.new("accessing nil value for key: #{key}"))
    end

  end
end
