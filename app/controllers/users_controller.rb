class UsersController < ApplicationController
  
  def new
    @user = User.new  
  end

  def create
    user = User.new(user_params)
    if user.photo == ""
      user.photo = "https://i.imgur.com/GceZM8o.png"
    end
    user.save
    session[:user_id] = user.id
    redirect_to "/vagabonds/#{user[:id]}"
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    user = User.find_by_id(params[:id])
        p "user ID= #{user.id}"
    user.update_attributes(user_params)
    redirect_to "/vagabonds/#{user[:id]}"
  end

  def destroy
    user = User.find_by_id(params[:id])
    user.destroy
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :current_city, :email, :password, :photo)
    end

end
