class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :item
      t.float :price
      t.integer :stock

      t.timestamps
    end
  end
end
