class Review < ApplicationRecord
  belongs_to :user
  belongs_to :store

  validates :comment, :length => { maximum: 250 }, :allow_blank => true
  validates :star, :presence => true
end
