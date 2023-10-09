
class UsersController < ApplicationController
  before_action :find_user_by_id, only: %i[show edit update destroy]
  def index
    @users = User.all
  end

  def new 
    @user = User.new
  end
  
  def create
    #@department = Department.find(params[:department_id])
    #binding.pry
    @user = User.new(user_params)
    #@user.department_id = @department.id
    #binding.pry
    if @user.save!  
      #binding.pry
      redirect_to users_path
    else
      render :new
    end
  end 

  def show 
    

  end

  def edit 
    
  end

  def update
    # @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path(@user)
    else
      render :edit
    end
  end


  def destroy
    # @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :phone, :department_id, :role)
  end 

  def find_user_by_id
    @user = User.find(params[:id])
  end

end