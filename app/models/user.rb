class User < ApplicationRecord
  has_secure_password

  has_many :reviews
  has_one :store
  has_many :items, :through => :store
  
  validates :first, :presence => true
  validates :last, :presence => true
  validates :phone, :presence => true, :uniqueness => true
  validates :address, :presence => true
  validates :password, :presence => true, :length => { in: 6..20 }
  validates :email, :presence => true, :uniqueness => true
end
