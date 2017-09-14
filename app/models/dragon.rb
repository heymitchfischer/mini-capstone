class Dragon < ApplicationRecord
  belongs_to :supplier
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

  def default_image
    if images.count > 0
        images.first.url
    else
      "http://images.nickjr.com/nickjr/properties/digby-dragon/digby-dragon-1x1.jpg"
    end
  end
end
