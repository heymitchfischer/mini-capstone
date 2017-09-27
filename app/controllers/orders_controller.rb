class OrdersController < ApplicationController
  def create
    carted_dragons = current_user.current_cart
    order = Order.new(user_id: current_user.id)
    order.save
    carted_dragons.update_all(status: "ordered", order_id: order.id)
    order.calculate_totals
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
    redirect_to "/dragons" unless current_user && current_user.id == @order.user_id
  end
end