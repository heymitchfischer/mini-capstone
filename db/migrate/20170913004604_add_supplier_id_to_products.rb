class AddSupplierIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :dragons, :supplier_id, :integer
  end
end
