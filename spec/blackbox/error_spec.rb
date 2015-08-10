require 'spec_helper'

describe Blackbox::Error do

  it 'should be an error' do
    Blackbox::Error.should be < StandardError
  end
end
