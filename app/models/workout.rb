class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_categories
  has_many :categories, through: :workout_categories
end
