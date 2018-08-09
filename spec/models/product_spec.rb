require "rails_helper"

RSpec.describe Product, :type => :model do
    it "should be valid if product has title and description" do
      category = Category.create(name: "Bath")
      product = Product.create(title: "Bottle", description: "Large bottle")
      link = ProductCategory.new(product: product, category: category)
      expect(link).to be_valid
  end
end

