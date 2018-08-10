require "rails_helper"

RSpec.describe ProductsController, :type => :controller do
  describe '#create' do
    context 'when params are valid' do
      it "should create a new product" do
        category = Category.create!(name: "Toys")
        post :create, params: { product: { title: "Bottle", description: "Large bottle", categories: [category.id] } }
        expect(response).to redirect_to(Category.last)
      end
    end
  end
    context 'when params are not valid' do
      it "should re render the new template" do
        category = Category.create!(name: "Toys")
        post :create, params: { product: { title: nil, description: nil, categories: [nil] } }
        expect(response).to render_template(:new)
      end
    end
end
