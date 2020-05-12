class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  def show
  end

  def new_trainer
    @user = current_user
  end

  def create_trainer
    user = current_user
    # assingned the account to be trainer
    user.account_type = "trainer"
    # saving address
    user.street = params[:user][:street]
    user.suburb = params[:user][:suburb]
    user.state = params[:user][:state]
    user.country = params[:user][:country]
    user.postcode = params[:user][:postcode]

    #validation check and save
    if user.valid? && user.save
      redirect_to trainer_path
      # (:option => "Trainer")
    else 
        render "new_trainer"
    end
  end
end