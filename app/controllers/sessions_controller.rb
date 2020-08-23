class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :create_with_google_omniauth]

  def new
    if logged_in?
      redirect_to services_path
    end
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
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

  def create_with_google_omniauth
    omniauth = request.env['omniauth.auth']
      user = User.find_or_create_by(email: omniauth['info']['email']) do |u|
        byebug
        u.username = omniauth['info']['email']
        u.password = SecureRandom.hex
      end
    session[:user_id] = user.id
    redirect_to services_path
  end
end
