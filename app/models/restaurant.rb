class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
end
