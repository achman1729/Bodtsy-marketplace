class TrainersController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.workouts
      @workouts = current_user.workouts
    end 
  end
end
