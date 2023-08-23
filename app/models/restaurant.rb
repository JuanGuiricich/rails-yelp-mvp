class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  # ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: "category cannot be blank" }
end
