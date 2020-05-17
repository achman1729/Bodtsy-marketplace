class TrainersController < ApplicationController

  def index
    if current_user.workouts
      @workout = current_user.workouts
    end 
  end
end
