require "rails_helper"

RSpec.describe ProductCategory, :type => :model do
    it "should be valid if linked to a product and a category" do
      product = Product.new(title: "Bottle", description: "Large bottle")
      expect(product).to be_valid
  end
end

