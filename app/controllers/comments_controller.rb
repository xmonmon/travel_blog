class CommentsController < ApplicationController
    
  end
  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new(comment_params)
    comment.post_id = params[:id]
    comment.save
    redirect_to post_path(params[:id])
  end

  def edit
    @comment = Comment.find_by_id(params[:comment_id])
  end

  def update
    comment = Comment.find_by_id(params[:comment_id])
    comment.update_attributes(comment_params)
    redirect_to post_path(params[:id])
  end

  def destroy
    comment = Comment.find_by_id(params[:comment_id])
    comment.destroy
    redirect_to root_path
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end
