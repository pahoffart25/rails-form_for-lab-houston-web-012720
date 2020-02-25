class SchoolClassesController < ApplicationController
    def index
        @classes = SchoolClass.all
    end

    def show 
        @c = SchoolClass.find(params[:id])
    end

    def new
        @c = SchoolClass.new
    end

    def create
        c = SchoolClass.create(params_class)
        redirect_to "/school_classes/#{c.id}"
    end

    def edit
        @c = SchoolClass.find(params[:id])
    end

    def update
        c = SchoolClass.find(params[:id])
        c.update(params_class)

        redirect_to "/school_classes/#{c.id}"
    end

    def params_class
        params.require(:school_class).permit(:title, :room_number)
    end



end
