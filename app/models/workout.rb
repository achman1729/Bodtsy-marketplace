class Workout < ApplicationRecord
<<<<<<< HEAD
  has_many :user_workouts
=======
  has_many :user_workouts, dependent: :destroy
>>>>>>> 608f87b
  has_many :users, through: :user_workouts
  has_many :carts
  has_many :workout_categories, dependent: :destroy
  has_many :categories, through: :workout_categories
  has_many_attached :pictures
end
