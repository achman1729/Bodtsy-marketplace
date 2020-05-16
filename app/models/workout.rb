class Workout < ApplicationRecord
  has_many :user_workouts
  has_many :users, through: :user_workouts
  has_many :carts
  has_many :workout_categories
  has_many :categories, through: :workout_categories
end
