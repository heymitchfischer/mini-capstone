class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all
    sort_attribute = params[:sort]
    order_attribute = params[:sort_order]
    search_term = params[:search_term]
    if sort_attribute && order_attribute
      @dragons = Dragon.all.order(sort_attribute => order_attribute)
    elsif sort_attribute
      @dragons = Dragon.all.order(sort_attribute)
    elsif search_term
      @dragons = @dragons.where("name iLike ?", "%#{search_term}%")
    end
  end

  def new
    @suppliers = Supplier.all
  end

  def create
    dragon = Dragon.new(
                        name: params[:name],
                        price: params[:price],
                        description: params[:description],
                        image: params[:image],
                        amount_spikes: params[:amount_spikes],
                        color: params[:color],
                        size: params[:size],
                        supplier_id: params[:supplier_id]
                        )
    dragon.save
    flash[:success] = "Dragon successfully created!"
    redirect_to "/dragons/#{dragon.id}"
  end

  def show
    @dragon = Dragon.find(params[:id])
    @images = @dragon.images
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
