class AddCompanyNameToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :company_name, :string
  end
end
