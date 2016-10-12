class RemoveColumns < ActiveRecord::Migration[5.0]
  def up
    remove_column :users, :abn
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :phone
  end
end
