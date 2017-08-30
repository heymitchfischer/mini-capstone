class CreateDragons < ActiveRecord::Migration[5.1]
  def change
    create_table :dragons do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :description
      t.string :color
      t.integer :amount_spikes
      t.string :size

      t.timestamps
    end
  end
end
