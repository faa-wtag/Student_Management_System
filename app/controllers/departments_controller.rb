
class DepartmentsController < ApplicationController
    before_action :find_dept_by_id, only: %i[show edit update destroy]


    def index
      @departments = Department.all
    end

    def new 
      @department = Department.new
    end
    
    def create
      @department = Department.new(dept_params)
      if @department.save  
          redirect_to departments_path
      else
        render :new
      end
    end 

    def show 

    end
  
    def edit 
      
    end
  
    def update
      if @department.update(dept_params)
        redirect_to departments_path(@department)
      else
        render :edit
      end
    end
  
  
    def destroy
      @department.destroy
      redirect_to departments_path
    end


    private

    def dept_params
     params.require(:department).permit(:dept_name, :dept_code)
    end 


    def find_dept_by_id
     @department = Department.find(params[:id])
    end


   
end