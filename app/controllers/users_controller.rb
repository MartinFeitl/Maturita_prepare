class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the alpha #{@user.username}, blog you sucesfully created account here"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end





  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end