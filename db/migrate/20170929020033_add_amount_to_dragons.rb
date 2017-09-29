class AddAmountToDragons < ActiveRecord::Migration[5.1]
  def change
    add_column :dragons, :amount, :integer
  end
end
