class SchoolClassesController < ApplicationController

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def index
    @schoolclasses = SchoolClass.all
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    # binding.pry
    @schoolclass = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    # binding.pry
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
