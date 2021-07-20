class User < ApplicationRecord
  has_secure_password

  has_one_attached :avatar
  has_many :stores
  
  validates :first, :presence => true
  validates :last, :presence => true
  validates :phone, :presence => true, :uniqueness => true
  validates :address, :presence => true
  validates :password, :presence => true, :length => { in: 6..20 }
  validates :email, :presence => true, :uniqueness => true
end
