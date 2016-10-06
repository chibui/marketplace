class AddColsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :business_name, :string
    add_column :users, :abn, :string
    add_column :users, :tos_status, :boolean
    add_column :users, :phone, :string

  end
end
