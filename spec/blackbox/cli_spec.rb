require 'spec_helper'

describe Blackbox::CLI do

  describe '#smoke' do

    let(:crs) { double }

    before do
      stub_const('Blackbox::CopyRolloutSettings', crs)
    end

    it 'should call test with -t @smoke' do
      subject.should_receive(:test).with('-t @smoke')
      crs.stub_chain(:go, :for, :it).and_return(true)
      subject.should_receive(:load_copy_rollout_settings)
      subject.smoke
    end

    it 'should not call smoke if it does not copy the rollout settings' do
      subject.should_not_receive(:test)
      crs.stub_chain(:go, :for, :it).and_return(false)
      subject.should_receive(:load_copy_rollout_settings)
      subject.smoke
    end

    it 'does not take any arguments as to not confuse the developer who runs this command' do
      subject.method(:smoke).arity.should be_zero
    end

  end

  describe '#i_just_deployed_to_production' do

    it 'should call test with -t @production -e production' do
      subject.should_receive(:test)
      subject.i_just_deployed_to_production
    end

    it 'does not take any arguments as to not confuse the developer who runs this command' do
      subject.method(:smoke).arity.should be_zero
    end

  end

end
