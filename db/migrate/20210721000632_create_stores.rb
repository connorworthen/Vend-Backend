class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :supplier
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
