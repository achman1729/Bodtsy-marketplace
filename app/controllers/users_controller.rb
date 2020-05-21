class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new_trainer
    @user = current_user
  end

  def create_trainer
    user = current_user

    # assingned the account to be trainer
    user.account_type = "trainer"
    
    # saving address
    user.first_name = params[:user][:first_name]
    user.last_name = params[:user][:last_name]
    user.street = params[:user][:street]
    user.suburb = params[:user][:suburb]
    user.state = params[:user][:state]
    user.country = params[:user][:country]
    user.postcode = params[:user][:postcode]

    #validation check and save
    if user.valid? && user.save
      redirect_to trainer_path
    else 
        render "new_trainer"
    end
  end
end
