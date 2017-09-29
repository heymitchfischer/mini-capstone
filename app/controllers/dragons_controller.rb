class DragonsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @dragons = Dragon.all
    sort_attribute = params[:sort]
    order_attribute = params[:sort_order]
    search_term = params[:search_term]
    category_attribute = params[:category]

    if category_attribute
      @dragons = Category.find_by(name: category_attribute).dragons
    end

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
    @dragon = Dragon.new
  end

  def create
    @dragon = Dragon.new(
                        name: params[:name],
                        price: params[:price],
                        description: params[:description],
                        color: params[:color],
                        size: params[:size],
                        supplier_id: params[:supplier_id],
                        amount: params[:amount]
                        )
    if @dragon.save
      flash[:success] = "Dragon successfully created!"
      redirect_to "/dragons/#{dragon.id}"
    else
      @suppliers = Supplier.all
      @errors = @dragon.errors.full_messages
      render "new.html.erb"
    end
  end

  def show
    @dragon = Dragon.find(params[:id])
  end

  def edit
    @suppliers = Supplier.all 
    @dragon = Dragon.find(params[:id])
  end

  def update
    @dragon = Dragon.find(params[:id])
    @dragon.assign_attributes(
                              name: params[:name],
                              price: params[:price],
                              description: params[:description],
                              color: params[:color],
                              size: params[:size],
                              supplier_id: params[:supplier_id],
                              amount: params[:amount]
                              )
    if @dragon.save
      flash[:info] = "Dragon successfully updated"
      redirect_to "/dragons/#{@dragon.id}"
    else 
      @errors = @dragon.errors.full_messages
      render "edit.html.erb"
    end
  end

  def destroy
    dragon = Dragon.find(params[:id])
    dragon.destroy
    flash[:warning] = "Dragon successfully destroyed"
    redirect_to "/dragons"
  end
end
