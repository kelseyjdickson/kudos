class SessionsController < ApplicationController
    
    def new
    end
    def create
        @teacher = Teacher.find_by(username: params[:username])
        # return head(:forbidden) unless @user.authenticate(params[:password])
        if @teacher && @teacher.authenticate(params[:password])
            session[:teacher_id] = @teacher.id
            redirect_to students_path
        else
            flash.now[:alert] = "Username or password is invalid"
            render action: "new"
        end
    end
    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logout Successful"
        redirect_to login_path
    end

end