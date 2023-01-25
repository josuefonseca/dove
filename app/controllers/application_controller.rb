class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if !session[:user_id]
            redirect_to login_path
        else
            if usr = User.find(session[:user_id])
                Current.user = usr
            end
        end
    end
end
