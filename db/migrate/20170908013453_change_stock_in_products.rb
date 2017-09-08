class ChangeStockInProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :dragons, :stock, :string
    add_column :dragons, :in_stock, :boolean
  end
end
