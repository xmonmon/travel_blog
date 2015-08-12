class PostsController < ApplicationController
  
  def new
    if current_user
      @post = Post.new
      @post.city_id = params[:id]
    else
      redirect_to login_path
    end
  end

  def create
    if current_user
      post = Post.new(post_params)

      if City.exists?(post[:city_id])
        post.user_id = session[:user_id]
        if post.save
          redirect_to "/cities/#{post.city_id}"
        else
          redirect_to new_post_path(post[:city_id]), notice: "TITLE IS WAAAY TOO LONG"
        end
      else
        redirect_to root_path
      end

    else
      redirect_to login_path
    end

  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def edit
    @post = Post.find_by_id(params[:id])
    unless current_user && current_user[:id] == @post[:user_id] 
      redirect_to root_path
    end
  end

  def update
    post = Post.find_by_id(params[:id])
    if current_user && current_user[:id] == post[:user_id]
      post.update_attributes(post_params)
      redirect_to "/posts/#{post[:id]}"
    else
      redirect_to root_path
    end
  end

  def destroy
    post = Post.find_by_id(params[:id])
    if current_user && current_user[:id] == post[:user_id]
      post.destroy
      redirect_to "/vagabonds/#{session[:user_id]}"
    else
      redirect_to "http://askshialabeouf.bitballoon.com/"
    end
  end

  def index
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :city_id)
    end

end
