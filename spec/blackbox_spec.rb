require "spec_helper"

describe Blackbox do
  describe ".setup" do
    it "initializes a config object" do
      described_class.setup
      described_class.config.should be_a described_class::Configuration
    end

    it "stores the environment" do
      described_class.setup
      described_class.environment.should_not be_nil
    end

    it "stores the browser" do
      described_class.setup
      described_class.browser.should_not be_nil
    end

    it "stores the locale" do
      described_class.setup
      described_class.locale.should_not be_nil
    end

    it "initializes test variables" do
      described_class.setup
      described_class.test_variables.foo = "bar"
      described_class.test_variables.foo.should == "bar"
    end

    it "sets up Capybara" do
      Capybara.should_receive(:app_host=)
      Capybara.should_receive(:register_driver)
      described_class.setup
    end
  end

  describe ".teardown" do
    before { described_class.setup }

    it "resets test variables" do
      described_class.test_variables.foo = "bar"
      described_class.teardown
      expect { described_class.test_variables.foo}.to raise_error
      described_class.test_variables.map {|variable, values| values.blank? }.should be_all
    end

    it "cleans up Facebook data" do
      facebook = double
      described_class.stub(facebook: facebook, facebook_initialized: true)
      facebook.should_receive(:destroy_all_test_users)
      described_class.teardown
    end

    it "does not clean up Facebook data if Facebook has not been used" do
      facebook = double
      described_class.stub(facebook: facebook)
      facebook.should_not_receive(:destroy_all_test_users)
      described_class.teardown
    end
  end

  describe ".test_petition_urls" do
    let(:urls) { ["http://example.com/", "http://test.com/"] }

    before do
      described_class.stub(:config).and_return(test_petition_urls: { staging: urls, demo: nil })
    end

    it "returns an array of URLs for the current environment" do
      described_class.environment = :staging
      described_class.test_petition_urls.should == urls
    end

    it "returns nil when there are no test URLs for the current environment" do
      described_class.environment = :demo
      described_class.test_petition_urls.should be_nil
    end
  end
end
