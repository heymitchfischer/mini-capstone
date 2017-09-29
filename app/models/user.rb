class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_dragons

  validates :email, uniqueness: true

  def current_cart
    carted_dragons.where(status: "carted")
  end
end
