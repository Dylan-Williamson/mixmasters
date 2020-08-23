class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    if logged_in?
      redirect_to services_path
    end
  end

  def create
    engineer = Engineer.find_by(username: params[:username])
    if engineer && engineer.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to services_path
    else
      flash[:errors] = ["Invalid Credentials"]
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
