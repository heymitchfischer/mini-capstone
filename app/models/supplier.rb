class Supplier < ApplicationRecord
  # has_many :dragons

  def dragons
    Dragon.where(supplier_id: id)
  end
end
