class Workout < ApplicationRecord
  belongs_to :user
  belongs_to :trainer
  has_many :workout_categories
  has_many :categories, through :workout_categories
end
