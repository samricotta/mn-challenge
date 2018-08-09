class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
    @product = Product.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
