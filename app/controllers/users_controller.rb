class UsersController < ApplicationController
   before_action :check_user, only: [:edit, :update]

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.order(created_at: :desc)
  end
  
  def edit 
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
      flash[:success] = "success" 
    else
      render'edit'
    end
  end

  def check_user
      @user = User.find(params[:id])
      unless @user ==  current_user then
      redirect_to root_path
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation,:profile,:birthplace)
     end
  end
