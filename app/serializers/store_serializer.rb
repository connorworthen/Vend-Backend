class StoreSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :company_email, :description
end
