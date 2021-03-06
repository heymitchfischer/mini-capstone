class Category < ApplicationRecord
  has_many :category_dragons
  has_many :dragons, through: :category_dragons

  validates :name, uniqueness: true
end
