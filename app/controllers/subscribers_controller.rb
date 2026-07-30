class SubscribersController < ApplicationController
  allow_unauthenticated_access
  before_action :set_product

  def create 
    @product.subscribers.where(subscriber_params).first_or_create
    # .subscriber tự động sinh ra một câu lệnh SQL để lọc các bản ghi trong bảng
    #subscribers có product_id trùng với id của @product hiện tại 
    redirect_to @product, notice: "You are now subscribed"
    # redirect_to ... notice: là "flash message" -> setting message
  end

  private
  def set_product
    @product = Product.find(params[:product_id])
  end

  def subscriber_params
    params.expect(subscriber:[:email])
  end

  S
end
