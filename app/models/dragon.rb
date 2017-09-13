class Dragon < ApplicationRecord
  belongs_to :Supplier
  has_many :images

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def discounted?
    price < 50
  end

  def tax
    return price*0.09
  end

  def total
    return tax + price
  end
end
