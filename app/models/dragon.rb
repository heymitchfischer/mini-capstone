class Dragon < ApplicationRecord
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
