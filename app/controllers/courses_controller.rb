class CoursesController < ApplicationController
  before_action :find_course_by_id, only: %i[show edit update destroy]


  def index
    @courses = Course.all
  end

  def new 
    @course = Course.new
  end
  
  def create
    @course = Course.new(course_params)
    #binding.pry

    if @course.save!  
        redirect_to courses_path
    else
      render :new
    end
  end 

  def show 

  end

  def edit 
    
  end

  def update
    if @course.update(course_params)
      redirect_to courses_path(@course)
    else
      render :edit
    end
  end


  def destroy
    @course.destroy
    redirect_to courses_path
  end


  private

  def course_params
   params.require(:course).permit(:course_title, :course_code, :department_id)
  end 


  def find_course_by_id
   @course = Course.find(params[:id])
  end




end