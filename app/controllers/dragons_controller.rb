class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all
  end

  def new
    
  end
D
  def create
    dragon = Dragon.new(
                        name: params[:name],
                        price: params[:price],
                        description: params[:description],
                        image: params[:image],
                        amount_spikes: params[:amount_spikes],
                        color: params[:color],
                        size: params[:size]
                        )
    dragon.save
    flash[:success] = "Dragon successfully created!"
    redirect_to "/dragons/#{dragon.id}"
  end

  def show
    @dragon = Dragon.find(params[:id])
  end

  def edit
    @dragon = Dragon.find(params[:id])
  end

  def update
    dragon = Dragon.find(params[:id])
    dragon.assign_attributes(
                              name: params[:name],
                              price: params[:price],
                              description: params[:description],
                              image: params[:image],
                              amount_spikes: params[:amount_spikes],
                              color: params[:color],
                              size: params[:size]
                              )
    dragon.save
    flash[:info] = "Dragon successfully updated"
    redirect_to "/dragons/#{dragon.id}"
  end

  def destroy
    dragon = Dragon.find(params[:id])
    dragon.destroy
    flash[:warning] = "Dragon successfully destroyed"
    redirect_to "/dragons"
  end
end
