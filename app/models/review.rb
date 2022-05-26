class Review < ApplicationRecord
  validates :content, presence: true
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true, in: 0..5 }
  validates :rating, inclusion: 0..5
end
