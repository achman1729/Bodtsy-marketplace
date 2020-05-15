class TrainersController < ApplicationController
  # before_action :authenticate_trainer
  def index
    if current_user.account_type == "trainer"
      @workout = current_user.workouts
    end
    
  end

  private

  # def authenticate_trainer
  #   if current_user.account_type == "trainer"
  #   end
  # end
end
