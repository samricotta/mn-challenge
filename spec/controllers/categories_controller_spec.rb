require "rails_helper"

RSpec.describe CategoriesController, :type => :controller do
  describe '#index' do
    it "should have an index of categories" do
      category = Category.create!(name: "Toys")
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end

  describe '#show' do
    it "should render the show template" do
      category = Category.create!(name: "Toys")
      product = Product.create!(title: "Bottle", description: "Large bottle")
      product_category = ProductCategory.create!(product: product, category: category)
      get :show, params: { id: category.id }
      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
    end
  end

  describe '#create' do
    context 'when params are valid' do
      it "should create a new category" do
        post :create, params: { category: { name: "Toys" } }
        expect(response).to redirect_to(Category.last)
      end
    end

    context 'when params are not valid' do
      it "should re render the index" do
        post :create, params: { category: { name: nil } }
        expect(response).to render_template(:index)
      end
    end
  end
end

