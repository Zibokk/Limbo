require "spec_helper"

describe Blackbox::Syntaxatron do

  it 'should return a new instance' do
    described_class.whatever.should be_a(described_class)
  end

  it 'should return itself' do
    subject.whatever.should == subject
  end

end
