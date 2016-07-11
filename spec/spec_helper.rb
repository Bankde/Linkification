require 'rspec'
require_relative '../makeLink.rb'


describe "Test Linkification" do
  it "link - example.com" do
    expect(link("http://example.com")).to eql("<a href=\"http://example.com\">http://example.com</a>")
  end
end
