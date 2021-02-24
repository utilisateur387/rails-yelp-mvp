class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true }, inclusion: { in: RATING, message: 'Rating is not valid' }
  validates :content, presence: true
end
