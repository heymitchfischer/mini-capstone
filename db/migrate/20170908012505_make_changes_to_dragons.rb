class MakeChangesToDragons < ActiveRecord::Migration[5.1]
  def change
    change_column :dragons, :description, :text
    change_column :dragons, :price, "numeric USING CAST(price AS numeric)", precision: 9, scale: 2
    add_column :dragons, :stock, :string
  end
end
