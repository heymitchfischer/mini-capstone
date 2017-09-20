class CategoryDragon < ApplicationRecord
  belongs_to :dragon
  belongs_to :category
end
