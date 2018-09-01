class Product < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :price_cents, presence: true, numericality: true

  def formatted_price
    '$' + sprintf('%.2f', price_in_dollars)
  end

  def price_in_dollars
    price_cents / 100.0
  end
end
