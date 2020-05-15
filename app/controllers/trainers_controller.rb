class TrainersController < ApplicationController

  def index
    if current_user.account_type == "trainer"
      @workout = current_user.workouts
    end
    
  end
end
