class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :sale

  def total_price_cents
    product.price_cents * quantity
  end
end
