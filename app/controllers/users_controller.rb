class UsersController < ApplicationController
  
  def new
    @user = User.new  
  end

  def create
    user = User.new(user_params)
    if user_params[:photo] == nil
      user.photo = DEFAULT PHOTO
    end
    user.save
    redirect_to profile_path
  end

  def show
    @user = User.find_by_id(session[:id])
  end

  def edit
    user = User.find_by_id(session[:id])
  end

  def update
    user = User.find_by_id(session[:id])
    user.update_attributes(user_params)
    redirect_to profile_path
  end

  def destroy
    user = User.find(session[:id])
    user.destroy
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :photo)
    end
end
