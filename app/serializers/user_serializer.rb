class UserSerializer < ActiveModel::Serializer
  attributes :id, :first, :last, :phone, :address, :email
end