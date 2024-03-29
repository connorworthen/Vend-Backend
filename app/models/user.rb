class User < ApplicationRecord
  has_many :items
  has_secure_password

  has_one_attached :image
  
  validates :username, :presence => true, :uniqueness => true, :length => { in: 1..24 }
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true, :length => { in: 6..20 }
end
