class StudentsController < ApplicationController

    def index
        @students=Student.all
    end

    
    def new
        @student=Student.new
    
    end
    
    def create
        @student=Student.create(actual_params)
        redirect_to student_path(@student.id)
    
    end
    
    def edit
        @student=Student.find(params[:id])
    end
    
    def update
        @student=Student.find(params[:id])
        @student.update(actual_params)
        redirect_to student_path(@student.id)

    end
    
    def show
        @student=Student.find(params[:id])
    end
    

    private

    def actual_params
        params.require(:student).permit(:first_name,:last_name)
    end

end
