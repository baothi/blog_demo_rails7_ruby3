class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
  end

  def destroy
  end
  
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
  def set_comment
    @comment = Comment.find(params[:id])
  end

end
