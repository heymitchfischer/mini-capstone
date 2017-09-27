class CartedDragon < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :dragon
  belongs_to :user

  def subtotal
    dragon.price * quantity
  end
end
