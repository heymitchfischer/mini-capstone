class DeleteImageFromDragon < ActiveRecord::Migration[5.1]
  def change
    remove_column :dragons, :image, :string
  end
end
