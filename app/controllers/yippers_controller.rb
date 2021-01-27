class YippersController < ApplicationController
  before_action :find_yipper, only [:show]

  def index
    @yippers = Yipper.all
    render json: @yippers
  end

  def show
  end

  def new
    @yipper = Yipper.create
  end

  def create
    @user = User.find(:user_id)
    if @yipper.save
      render json: {
        yipper: @yipper, 
        errors: false
      }
    else
      render json: {
        errors: true, 
        info: ["yipper cannot be created"]
      }
  end

  def destroy
    @yippers = Yipper.all
    @yipper = find_yipper
    if @user.destroy
      render :json {
        yipper: yippers, 
        errors: "yipper was deleted",
        success: true
      }
    else
      render :json {
        success: false,
        errors: false,
        info: ["cannot delete yipper"]
      }
  end

  private

  def find_yipper
    @yipper = Yipper.find(params[:id])
  end

  def yipper_params
    params.require(:yipper).permit(:content, :vote, :user_id)
  end

end
