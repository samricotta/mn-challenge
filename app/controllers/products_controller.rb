class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    params[:product][:categories].each do |id|
      category = Category.find(id)
      product_category = ProductCategory.create(product: @product, category: category)
    end
    if @product.save
      redirect_to category_path(@product.categories.first)
    end
  end

  def new
    @product = Product.new
  end

  private

  def product_params
    params.require(:product).permit(:title, :description)
  end
end
