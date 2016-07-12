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
  it "fail - http://example..ab" do
    expect(link("http://example..ab")).to eql("http://example..ab")
  end
  it "success - http://ไทยเมล.คอม" do
    expect(link("http://ไทยเมล.คอม")).to eql("<a href=\"http://ไทยเมล.คอม\">http://ไทยเมล.คอม</a>")
  end
  it "success - ftp://example.com" do
    expect(link("ftp://example.com")).to eql("<a href=\"ftp://example.com\">ftp://example.com</a>")
  end
  it "success - mailto:test@example.com" do
    expect(link("mailto:test@example.com")).to eql("<a href=\"mailto:test@example.com\">mailto:test@example.com</a>")
  end
end
