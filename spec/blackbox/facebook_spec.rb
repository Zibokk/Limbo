require "spec_helper"

describe Blackbox::Facebook do
  subject { described_class.new({}) }

  it "stores an API client" do
    client = double("FbGraph::Application").as_null_object
    FbGraph::Application.stub(:new).and_return(client)
    subject.client.should_not be_nil # be_an doesn't work on mocks :(
  end

  it "does not store existing Facebook test users" do
    client = double("FbGraph::Application")
    client.stub(:test_users).and_return(["Joe", "Jennifer"])
    FbGraph::Application.stub(:new).and_return(client)
    subject.test_users.should be_empty
  end

  describe "#create_test_user" do
    it "creates a Facebook test user and adds it to its own store" do
      client = double("FbGraph::Application", test_users: [], test_user!: "Julie")
      FbGraph::Application.stub(:new).and_return(client)
      subject.create_test_user
      subject.test_users.should include("Julie")
    end
  end

  describe "#destroy_all_test_users" do
    let(:joe) { u = double("user"); u.stub(:destroy); u }
    let(:jennifer) { u = double("user"); u.stub(:destroy); u }

    it "calls the Facebook API to destroy each test user" do
      client = double("FbGraph::Application", test_users: [joe, jennifer])
      FbGraph::Application.stub(:new).and_return(client)
      subject.test_users.each { |u| u.should_receive(:destroy) }
      subject.destroy_all_test_users
    end

    it "empties the test user store" do
      client = double("FbGraph::Application", test_users: [joe, jennifer])
      FbGraph::Application.stub(:new).and_return(client)
      subject.destroy_all_test_users
      subject.test_users.should be_empty
    end
  end
end
