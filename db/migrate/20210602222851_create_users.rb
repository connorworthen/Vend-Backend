class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :phone
      t.stirng :email
      t.string :address
      t.string :password_digest

      t.timestamps
    end
  end
end
