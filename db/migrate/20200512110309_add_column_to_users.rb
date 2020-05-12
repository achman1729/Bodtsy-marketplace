class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :integer
    add_column :users, :street, :string
    add_column :users, :suburb, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :postcode, :integer
    add_column :users, :account_type, :string
  end
end
