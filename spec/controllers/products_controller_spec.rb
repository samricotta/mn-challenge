require "rails_helper"

RSpec.describe Product, :type => :controller do
    it "should have an index of products for a given category" do
      category = Category.first
      expect(category).to be_valid
  end
end

