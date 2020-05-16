class AddColumnToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :quantity, :integer
    add_column :carts, :total, :decimal
    add_column :carts, :unit_price, :decimal
  end
end