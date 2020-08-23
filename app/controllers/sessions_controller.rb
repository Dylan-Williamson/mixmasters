class SessionsController < ApplicationController
  def new
  end

  def create
    engineer = Engineer.find_by(username: params[:username])
    if engineer && engineer.authenticate(params[:password])

      redirect_to services_path
    else
      flash[:errors] = ["Invalid Credentials"]
      redirect_to login_path
    end
  end

  def destroy
  end
end
