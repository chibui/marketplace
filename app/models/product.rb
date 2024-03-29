class Product < ApplicationRecord
  has_many :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, :origin, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  # returns most recently updated product
  def self.latest
    Product.order(:updated_at).last
  end

  private

     # ensure that there are no line items referencing this product
     def ensure_not_referenced_by_any_line_item
       unless line_items.empty?
         errors.add(:base, 'Line Items present')
         throw :abort
       end
     end

end
