class StudentsController < ApplicationController
    
    def index
        @students = Student.all
    end

    def show 
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        student = Student.create(params_student)
        redirect_to "/students/#{student.id}"
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        student = Student.find(params[:id])
        student.update(params_student)

        redirect_to "/students/#{student.id}"
    end

    def params_student
        params.require(:student).permit(:first_name, :last_name)
    end






end
