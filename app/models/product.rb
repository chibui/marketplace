class Product < ApplicationRecord
  validates :title, :description, :origin, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  # returns most recently updated product
  def self.latest
    Product.order(:updated_at).last
  end

end
