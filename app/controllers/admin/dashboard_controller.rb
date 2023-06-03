# Basic admin authentication to controller
class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['username'], password: ENV['password']
  def show
    @product = Product.count
    @category = Category.count
  end
end
