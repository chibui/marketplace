class Cart < ApplicationRecord
  # declaring that a cart can have many line items, if a cart is destroyed then delete those line items.
  has_many :line_items, dependent: :destroy

  # defining method to allow grouping of line_items to show quantity rather than individually

  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product.id)
    end
    current_item
  end

  # Method to calculate total price
  def total_price
      line_items.to_a.sum { |item| item.total_price }
    end

end
