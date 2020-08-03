class KudosController < ApplicationController
    before_action :kudo_finder, only: [:show, :update, :destroy, :edit]
    
    def new
        
        @kudo = Kudo.new
        
    end

    def create
     kudo = Kudo.create(kudo_params)
     redirect_to "/students/#{kudo.student.id}"
    end

    def edit
        
    end
   
    def update
        @kudo.update(kudo_params)
         redirect_to teacher_path(@kudo.teacher)
    end

    def destroy
    #    byebug
         kudo = Kudo.find(params[:id])
        
        kudo.destroy
        redirect_to teacher_path(params[:teacher][:id])
        #  redirect_to teacher_path(@kudo)
    end 



    private
     def kudo_params
         params.require(:kudo).permit(:student_id,:teacher_id,:kudo)
    end

    def kudo_finder
        @kudo = Kudo.find(params[:id])
    end
end
