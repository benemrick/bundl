require "spec_helper"

RSpec.describe Bundl, :type => :model do
  it "is valid with valid attributes" do
    expect(Bundl.new(title: "Title", description: "Description")).to be_valid
  end
  it "is not valid without a title" do
    bundl = Bundl.new(title: nil)
    expect(bundl).to_not be_valid
  end
  it "is not valid without a description" do
    bundl = Bundl.new(description: nil)
    expect(bundl).to_not be_valid
  end
end
