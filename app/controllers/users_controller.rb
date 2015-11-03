class UsersController < ApplicationController
  # before_action :authorize, except: [:index, :show]
  def index
  end
  def show
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

    private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
