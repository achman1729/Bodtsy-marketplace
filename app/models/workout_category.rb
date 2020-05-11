class WorkoutCategory < ApplicationRecord
  belongs_to :workout
  belongs_to :category
end
