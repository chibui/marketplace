class RemoveColumn < ActiveRecord::Migration[5.0]
  def up
    remove_column :users, :business_name
  end
end
