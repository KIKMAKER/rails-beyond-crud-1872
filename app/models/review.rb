class Review < ApplicationRecord
  belongs_to :restaurant
  # creates a method review.restaurant which returns the instance of restaurant that the review belongs to
  validates :content, presence: true
end
