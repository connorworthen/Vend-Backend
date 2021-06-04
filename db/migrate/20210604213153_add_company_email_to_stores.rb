class AddCompanyEmailToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :company_email, :string
  end
end
