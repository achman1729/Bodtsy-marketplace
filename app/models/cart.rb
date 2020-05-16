class Cart < ApplicationRecord
  belongs_to :user
  has_many :workout
end
