class UsersController < ApplicationController
  before_action :authenticate, only: [:show, :edit]
  before_action :authorize,    only: [:show, :edit]



  def show
    @user = User.find(current_user)
  end



  def new
    @user = User.new
  end



  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
      flash[:notice] = "You have successfully signed up!"
      else
        render 'new'
    end
  end

  def destroy
    User.find(params[:id]).delete
    session[:user_id] = nil
    flash[:notice] = 'Account Deleted'
    redirect_to new_user_path
  end



  private
  # Implement Strong Params
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end



  def authenticate
    redirect_to login_path, alert: 'Not authorized - you must be logged in!' if current_user.nil?
  end




  def authorize
    @user = User.find(current_user)
    redirect_to root_path if @user != current_user
  end



end
