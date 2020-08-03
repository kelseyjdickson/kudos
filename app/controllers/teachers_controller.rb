class TeachersController < ApplicationController
    def index 
        @teachers = Teacher.all
    end
    def show 
        @teacher = Teacher.find(params[:id])

    end
    def new 
        @teacher = Teacher.new
        @errors = flash[:errors]

    end

    def create
        @teacher = Teacher.create(teacher_params)
        if @teacher.valid?
            session[:teacher_id] = @teacher.id
            redirect_to @teacher
        else 
            flash[:errors] = @teacher.errors.full_messages
            redirect_to new_teacher_path
        end
    end


    private
    def teacher_params
        params.require(:teacher).permit(:teacher_name,:subject,:room,:username,:password,:password_confirmation)
    end
end
