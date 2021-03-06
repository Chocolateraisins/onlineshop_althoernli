class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @teddies = Teddy.all
  end

  def show
    @teddy = Teddy.find(params[:id])
  end

  def create
    teddy = Teddy.find(params[:teddy_id])
    order  = Order.create!(teddy_sku: teddy.sku, amount: teddy.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end
