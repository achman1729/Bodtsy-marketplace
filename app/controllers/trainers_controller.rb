class TrainersController < ApplicationController

  def index
    if current_user.workouts
      @workouts = current_user.workouts
    end 
  end
end
