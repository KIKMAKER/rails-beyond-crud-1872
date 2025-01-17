class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # has_many creates a method restaurant.reviews which returns all the restaurants reviews in an array
  # dependent destroy takes care of orphan instances
end
