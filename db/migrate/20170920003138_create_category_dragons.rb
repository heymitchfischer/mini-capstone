class CreateCategoryDragons < ActiveRecord::Migration[5.1]
  def change
    create_table :category_dragons do |t|
      t.integer :category_id
      t.integer :dragon_id

      t.timestamps
    end
  end
end
