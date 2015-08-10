require 'spec_helper'

describe Blackbox::Git do

  subject { Blackbox::Git }

  describe '#remote_git_sha' do

    after {
      Blackbox::Git.instance_variable_set(:@remote_git_shas, nil)
    }

    let(:environment) { :staging }
    let(:response) {
      body = response_body
      Class.new {
        class_eval <<-RUBY
          def body
            #{body.inspect}
          end
        RUBY
      }.new
    }

    before {
      RestClient.should_receive(:get).with("www.staging-change.org", :user => 'change', :password => 'theonlyconstantischange').once.and_return { response }
    }

    context 'success' do
      let(:response_body) { "12345abcd<!--\n624e4f393121a76879d9c2145be1d311a6f5d6a4\nsupbuddy" }
      it 'should return a git sha and cache it' do
        Blackbox::Git.remote_git_sha(environment).should == "624e4f393121a76879d9c2145be1d311a6f5d6a4"
        Blackbox::Git.remote_git_sha(environment).should == "624e4f393121a76879d9c2145be1d311a6f5d6a4"
      end
    end

    context 'failure' do
      let(:response_body) { "12345abcd<!--\nNOT A SHA\nsupbuddy" }
      it 'should raise an error if the result does not contain a sha' do
        expect { Blackbox::Git.remote_git_sha(environment) }.to raise_error(Blackbox::Git::ShaParseError)
      end
    end


  end

end
