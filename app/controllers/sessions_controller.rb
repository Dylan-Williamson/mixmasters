class SessionsController < ApplicationController
  def new
    if logged in?
      redirect_to services_path
    end
  end

  def create

  end

  def destroy
  end
end
