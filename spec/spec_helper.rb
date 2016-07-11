require 'rspec'
require_relative '../makeLink.rb'


describe "Test Linkification" do
  it "link - http://example.com" do
    expect(link("http://example.com")).to eql("<a href=\"http://example.com\">http://example.com</a>")
  end
  it "link - example.com" do
    expect(link("example.com")).to eql("example.com")
  end
end
