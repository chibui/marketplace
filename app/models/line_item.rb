class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  # Method to show total price in cart
  def total_price
    product.price * quantity
  end
  
end
