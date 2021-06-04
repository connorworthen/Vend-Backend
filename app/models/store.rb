class Store < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :users, :through => :reviews
end
