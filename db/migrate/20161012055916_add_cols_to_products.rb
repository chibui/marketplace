class AddColsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :seller, :string
    add_column :products, :min_order, :float
  end
end
