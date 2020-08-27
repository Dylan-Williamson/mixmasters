class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def new
        @user = User.new
        render 'new'
    end
    
    def index
        @user = User.all
        render 'index'
    end
    
    def show
        @services = @user.services
        render 'show'
    end
    
    def edit
        render 'edit'
    end

    def update
        @user.update(user_params)
        redirect_to @user
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to @user
    end

    def destroy
        @user.destroy
        session[:user_id] = nil
        redirect_to services_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :location, :bio, :password, :password_confirmation)
    end

    def find_user
        @user = User.find(params[:id])
    end
    
end