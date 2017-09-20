class OrdersController < ApplicationController
  def create
    dragon = Dragon.find(params[:dragon_id])
    order = Order.new(
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      dragon_id: params[:dragon_id]
                      )
    # order.calculate_totals
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
    @dragon = Dragon.find(@order.dragon_id)
  end
end