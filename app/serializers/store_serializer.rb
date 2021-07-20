class StoreSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :company_email, :description, :user_id
  # has_many :users
end
