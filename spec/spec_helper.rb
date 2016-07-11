require 'rspec'
require_relative '../makeLink.rb'


describe "Test Linkification" do
  it "success - http://example.com" do
    expect(link("http://example.com")).to eql("<a href=\"http://example.com\">http://example.com</a>")
  end

  it "fail - example.com" do
    expect(link("example.com")).to eql("example.com")
  end

  it "fail - http:example.com" do
    expect(link("http:example.com")).to eql("http:example.com")
  end

  it "fail - http://example.a" do
    expect(link("http://example.a")).to eql("http://example.a")
  end
end
