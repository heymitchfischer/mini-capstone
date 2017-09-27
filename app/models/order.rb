class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_dragons
  has_many :dragons, through: :carted_dragons

  def initialize(options_hash)
    super(options_hash)
  end

  def calculate_subtotal
    sum = 0
    carted_dragons.each do |carted_dragon|
      sum += carted_dragon.subtotal
    end
    self.subtotal = sum
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
    save
  end
end
