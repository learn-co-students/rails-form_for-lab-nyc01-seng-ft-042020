class SchoolClassesController < ApplicationController

    def index
        @school_class = SchoolClass.all
        render :index
    end

    def show
        @school_class = SchoolClass.find(params[:id])
        render :show
    end

    def new
        @school_class = SchoolClass.new
        render :new
    end
    
    def create
        school_class = SchoolClass.create(school_class_params)
        redirect_to school_class_path(school_class.id)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
        render :edit
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)

        redirect_to school_class_path(@school_class)
    end


    private
    def school_class_params
        params.require(:school_class).permit(:title,:room_number)
    end
end
