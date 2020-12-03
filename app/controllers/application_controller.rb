class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def authenticate_admin!
        redirect_to new_user_session_path unless current_user.admin
    end
    
end
