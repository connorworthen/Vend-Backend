class RemoveStockFromStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :stock, :integer
  end
end
