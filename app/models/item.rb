class Item < ApplicationRecord
  # belongs_to :store

  validates :name, :presence => true
  validates :description, :presence => true, :length => { maximum: 500 }
  validates :stock, :presence => true
  validates :price, :presence => true
  validates :category, :presence => true
end