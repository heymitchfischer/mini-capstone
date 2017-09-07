class Dragon < ApplicationRecord
  def sale_message
    return "Discount Item!" if price < 2
    return "Everyday Value!" if price >= 2
  end

  def tax
    return price*0.09
  end

  def total
    return self.tax + price
  end
end
