class RemovePriceFromStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :price, :float
  end
end
