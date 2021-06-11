class User < ApplicationRecord
  has_secure_password
  # has_many :reviews
  # has_one :store
  # has_many :items, :through => :store
end
