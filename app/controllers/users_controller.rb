class UsersController < ApplicationController

  
  def new
    if !current_user
    @user = User.new  
    else
      redirect_to "/vagabonds/#{current_user[:id]}"
    end
  end

  def create
    if !current_user
      user = User.new(user_params)
      if user.photo == ""
        user.photo = "https://i.imgur.com/GceZM8o.png"
      end
      if user.save
        session[:user_id] = user.id
        redirect_to "/vagabonds/#{user[:id]}"
      else
        redirect_to signup_path, notice: "YOU SUCK, you're not unique enough."
      end
    else
      redirect_to "/vagabonds/#{current_user[:id]}"
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    if current_user && current_user[:id].to_s == params[:id]
      @user = User.find_by_id(params[:id])
    else
      redirect_to root_path
    end
  end

  def update
    if current_user && current_user[:id].to_s == params[:id]
      user = User.find_by_id(params[:id])
      user.update_attributes(user_params)
      redirect_to "/vagabonds/#{user[:id]}"
    else
      redirect_to root_path
    end
  end

  def destroy
    if current_user && current_user[:id].to_s == params[:id]
      user = User.find_by_id(params[:id])
      user.destroy
      redirect_to root_path
    else
      redirect_to "http://askshialabeouf.bitballoon.com/"
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :current_city, :email, :password, :photo)
    end

end
