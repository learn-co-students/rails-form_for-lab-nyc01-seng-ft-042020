class SchoolClassesController < ApplicationController

    #new, create, show, edit, update

    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.create(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end
    
    private
    
    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end
    
    
    
 


end
