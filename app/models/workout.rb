class Workout < ApplicationRecord
  has_many :user_workouts, dependent: :destroy
  has_many :users, through: :user_workouts
  has_many :carts, dependent: :destroy
  has_many :workout_categories, dependent: :destroy
  has_many :categories, through: :workout_categories
  has_many_attached :pictures
end
