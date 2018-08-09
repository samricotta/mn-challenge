require "rails_helper"

RSpec.describe Category, :type => :model do
    it "should be valid if category has name" do
      category = Category.new(name: "Bath")
      expect(category).to be_valid
  end
end

