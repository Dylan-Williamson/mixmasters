class UsersController < ApplicationController
    load_and_authorize_resource
    skip_before_action :authorized, only: [:new, :create]
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def new
        @user = User.new
    end
    
    def index
        @user = User.all
    end
    
    def show
        @services = @user.services
    end
    
    def edit
    end

    def update
        
        if @user.update(user_params) == true
            @user.save
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_back(fallback_location: @user)
        end
    end
    

    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            flash[:notice] = "Registration was successful!"
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_back(fallback_location: signup_path)
        end
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