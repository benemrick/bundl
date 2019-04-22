# Test validity of MediaItem model

require "spec_helper"

RSpec.describe MediaItem, :type => :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(MediaItem.new(name: "bundl", url: "www.bundl.com", bundl_id: "4")).to be_valid
    end
    it "is not valid without a name" do
      item = MediaItem.new(name: nil)
      expect(item).to_not be_valid
    end
    it "is not valid without a url" do
      item = MediaItem.new(url: nil)
      expect(item).to_not be_valid
    end
    it "is not valid without a bundl_id" do
      item = MediaItem.new(bundl_id: nil)
      expect(item).to_not be_valid
    end
  end

  describe "Associations" do
    it "belongs to one bundl" do
      assc = described_class.reflect_on_association(:bundl)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
