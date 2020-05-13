class ApplicationController < ActionController::Base
    #   for redirecting user after signing in
    def after_sign_in_path_for(resource)
        if current_user.account_type == "trainer"
            trainer_path
        else
            workouts_path
        end
      end
end
