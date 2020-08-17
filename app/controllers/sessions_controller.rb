class SessionsController < ApplicationController
  def new
    if logged in?
      rediirect_to services_path
    end
  end

  def create
  end

  def destroy
  end
end
