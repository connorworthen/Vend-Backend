class RemoveItemFromStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :item, :string
  end
end
