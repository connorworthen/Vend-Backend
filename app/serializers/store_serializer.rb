class StoreSerializer < ActiveModel::Serializer
  attributes :id, :item, :price, :stock
end
