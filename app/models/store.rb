class Store < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :users, :through => :reviews

  validates :company_name, :presence => true, :uniqueness => true
  validates :company_email, :presence => true, :uniqueness => true
  validates :description, :presence => true, :length => { maximum: 500 }
end
