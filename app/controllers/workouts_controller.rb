class WorkoutsController < ApplicationController
  before_action :find_workout_params, only: [:show, :edit, :update, :destroy]

  def index
    @workout = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    user = current_user
    user.workouts.create(workout_params)
    user.workouts.last.pictures.attach(params[:workout][:pictures])
    user.workouts.last.categories.create(name: params[:workout][:name])

    redirect_to trainer_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def find_workout_params
      @workout = Workout.find(params[:id])
    end

    def workout_params
      params.require(:workout).permit(:title, :description, :price, :duration, :pictures => [])
    end
end
