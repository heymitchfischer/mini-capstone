class CartedDragonsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :index, :destroy]

  def index
    if current_user && current_user.current_cart.any?
      @carted_dragons = current_user.current_cart
    else
      flash[:warning] = "There are no items in your cart. Add some!"
      redirect_to "/dragons"
    end
  end

  def create
    if current_user
      carted_dragon = CartedDragon.new(
                                      user_id: current_user.id,
                                      dragon_id: params[:dragon_id],
                                      quantity: params[:quantity],
                                      status: "carted"
                                      )
      carted_dragon.save
      redirect_to "/carted_dragons"
    else 
      flash[:warning] = "Try logging in first!"
      redirect_to "/login"
    end
  end

  def destroy
    destroyed_dragon = CartedDragon.find(params[:id])
    destroyed_dragon.assign_attributes(
                                      status: "removed"
                                      )
    destroyed_dragon.save
    flash[:success] = "Dragon removed"
    redirect_to "/carted_dragons"
  end
end
