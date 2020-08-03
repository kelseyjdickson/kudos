class UsersController < ApplicationController

    def new
        @errors = flash[:errors]
        @user = User.new
        render :new
    end

    def create
        user_params = params.require(:user).permit(:username, :password )
        user = User.create(user_params)
        if user.valid?
        #keeping track of user with session
            session[:user_id] = user.id
            redirect_to students_path
        else  
            flash[:errors] = user.errors.full_messages 
            redirect_to signup_path
        end
    end
end
