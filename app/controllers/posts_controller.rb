class PostsController < ApplicationController
  
  def new
    @post = Post.new
    @post.city_id = params[:id]
  end

  def create
    post = Post.new(post_params)
    post.user_id = session[:user_id]
    post.save
    redirect_to "/cities/#{post.city_id}"
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :city_id)
    end

end
