class SessionSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
end