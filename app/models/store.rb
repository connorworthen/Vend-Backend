class Store < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :users, :through => :reviews

  validates :company_name => true, :uniqueness => true
  validates :company_email => true, :uniqueness => true
  validates :description => true, :length => { maximum: 500 }
end
