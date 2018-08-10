class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    selected_categories = params[:product][:categories]
    if @product.save
      if selected_categories
        selected_categories.each do |id|
          category = Category.find(id)
          product_category = ProductCategory.create(product: @product, category: category)
        end
        redirect_to category_path(@product.categories.first)
      else
        # Needed if no categories is selected on the form
        redirect_to new_product_path
      end
    else
      render :new
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
