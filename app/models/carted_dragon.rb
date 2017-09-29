class CartedDragon < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :dragon
  belongs_to :user

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true } 
  validates :quantity, numericality: { greater_than: 0 }
  # validates :quantity, numericality: { less_than_or_equal_to: %(dragon.amount) }

  def subtotal
    dragon.price * quantity
  end
end
