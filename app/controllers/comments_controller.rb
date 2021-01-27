class CommentsController < ApplicationController
  before_action :find_comment, only [:show]

  def index
    @comments = Comment.all 
    render json: @comments
  end

  def show
  end

  def create
    @user = User.find(:user_id)
    @yipper = Yipper.find(:yipper_id)
    if @comment.save
      render json: {
        comment: @comment, 
        errors: false
      }
    else
      render json: {
        errors: true, 
        info: ["comment could not be posted"]
      }
  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :yipper_id)


end
