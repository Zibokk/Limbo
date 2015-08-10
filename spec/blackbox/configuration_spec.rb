require "spec_helper"

describe Blackbox::Configuration do
  before do
    File.stub(:read) do
      <<-YAML
      :foo: :bar
      :application_base_urls:
        :production: "http://example.com/"
        :test: "http://test.com/"
      :sauce_labs:
        :browsers:
          :sauce_chrome: "foo"
          :sauce_ff36: "bar"
      YAML
    end
  end

  describe "#[]" do
    it "returns the value of a key" do
      subject[:foo].should == :bar
    end
  end

  describe "#environments" do
    it "lists all environments" do
      subject.environments.sort.should == [:production, :test].sort
    end
  end

  describe "#browsers" do
    it "lists all browsers" do
      subject.browsers.sort.should == [
        :android,
        :phantomjs,
        :chrome,
        :firefox,
        :safari,
        :firebug,
        :ie,
        :sauce_chrome,
        :sauce_ff36
      ].sort
    end
  end
end
