require 'spec_helper'

describe Blackbox::PresenceHash do

  it 'should store key value pairs' do
    subject[:key] = 'value'
    subject[:key].should == 'value'
  end

  it 'should raise an error when setting a value to nil' do
    expect { subject[:key] = nil }.to raise_error(Blackbox::PresenceHash::NilValueError)
  end

  it 'should raise an error when accessing a key that has no value' do
    expect { subject[:key] }.to raise_error(Blackbox::PresenceHash::NilValueError)
  end

  describe '#unsafe_check' do

    it 'should allow me to access nil values' do
      subject.unsafe_check(:NIL_VALUE).should == nil
    end

  end

end
