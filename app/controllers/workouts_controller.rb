class WorkoutsController < ApplicationController
  before_action :find_workout_params, only: [:show, :edit, :update, :destroy]

  def index
    @workout = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    # @workout.user_id = current_user.id
    if @workout.save
      #redirect to trainer index page
      redirect_to trainer_path
    else
      redirect_to :new
    end
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
      params.require(:workout).permit(:title, :description, :price, :duration)
    end
end
