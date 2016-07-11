require 'rspec'
require_relative '../makeLink.rb'


describe "Test Linkification" do
  it "link - http://google.com" do
    expect(link("http://google.com")).to eql("<a href=\"http://google.com\">http://google.com</a>")
  end
end
