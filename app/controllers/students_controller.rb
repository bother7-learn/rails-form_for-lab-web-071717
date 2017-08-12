class StudentsController < ApplicationController

    def show
      @student = Student.find(params[:id])
    end

    def index
      @students = Student.all
    end

    def new
      @student = Student.new
    end

    def create
      # binding.pry
      @student = Student.create(student_params)
      redirect_to student_path(@student)
    end

    def edit
      @student = Student.find(params[:id])
    end

    def update
      # binding.pry
      @student = Student.find(params[:id])
      @student.update(student_params)
      redirect_to student_path(@student)
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end
