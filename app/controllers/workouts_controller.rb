class WorkoutsController < ApplicationController

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

  def edit
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)
    redirect_to trainer_path, notice: 'Workout was successfully created.'
  end

  def destroy
    @workout = current_user.workouts.find(params[:id])
    # @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to trainer_path, notice: 'Workout was successfully deleted.'
  end

  private
    def workout_params
      params.require(:workout).permit(:title, :description, :price, :duration, :pictures => [])
    end
end