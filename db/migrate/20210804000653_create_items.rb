class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :available, default: true, null: false
      t.integer :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
