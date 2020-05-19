class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
  has_one :cart, dependent: :destroy
=======
  has_many :carts, dependent: :destroy # a cart is a cart item
>>>>>>> 608f87b
  has_many :user_workouts
  has_many :workouts, through: :user_workouts
end
