class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

  def index
    @categories = Categories.all
  end

  def create
    @category = Categories.create
  end

end
