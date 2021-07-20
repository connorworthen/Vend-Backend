class Store < ApplicationRecord
  belongs_to :user

  validates :company_name, :presence => true, :uniqueness => true
  validates :company_email, :presence => true, :uniqueness => true
  validates :description, :presence => true
  # , :length => { maximum: 500 }
end

# need to submit create store with user id + check serializer + models relationships