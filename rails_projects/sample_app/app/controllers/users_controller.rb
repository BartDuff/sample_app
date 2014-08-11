class UsersController < ApplicationController
  def new
      @user = User.new
      @title = "Register"
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
        sign_in @user
    flash[:success] = "Bienvenue dans l'Application Exemple!"
    redirect_to @user
    else
        @title = "Registration"
        render 'new'
    end
    
  end
  
  def show
      @user = User.find(params[:id])
      @title = @user.name
  end

  private
  
  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
