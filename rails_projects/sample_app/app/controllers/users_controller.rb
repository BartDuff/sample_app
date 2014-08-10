class UsersController < ApplicationController
  def new
      @title = "Register"
  end
  
  def show
      @user = User.find(params[:id])
      @title = @user.name
  end

  private
  
  def user_params
      params.require(:user).permit(:name, :email)
  end
end
