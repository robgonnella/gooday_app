class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id),
      notice: 'Logged in!'
    else
      flash.now.alert = 'Invalid login credentials - try again!'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end
end
