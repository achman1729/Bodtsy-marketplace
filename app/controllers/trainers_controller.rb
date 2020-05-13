class TrainersController < ApplicationController
  # before_action :authenticate_trainer
  def index
    @workout = Workout.all
  end

  private

  def authenticate_trainer
    if current_user.account_type == "trainer"
    end
  end
end
