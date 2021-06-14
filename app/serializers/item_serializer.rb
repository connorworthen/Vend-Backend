class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :stock, :price, :category
end
