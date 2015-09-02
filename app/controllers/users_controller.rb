class UsersController < ApplicationController 
  before_action :authenticate_user!, except: [:show]

  def edit
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update(user_params)
      # Sign in the user by passing validation in case their password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:password, :password_confirmation, :name, :avatar, :email_favorites)
  end
  
  def show
     @user = User.find(params[:id])
     @posts = @user.posts.visible_to(current_user)
     @comments = @user.comments
  end
end  