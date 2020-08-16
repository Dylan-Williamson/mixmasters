class EngineersController < ApplicationController

    before_action :find_engineer, only: [:show, :edit, :update, :destroy]

    def new
        @engineer = Engineer.new
    end
    
    def index
        @engineers = Engineer.all
        render 'index'
    end
    
    def show
    end
    
    def edit
    end

    def update
        @engineer.update(engineer_params)
        redirect_to @engineer
    end

    def create
        @engineer = Engineer.create(engineer_params)
    end

    def destroy
        @engineer.destroy
        redirect_to services_path
    end

    private

    def engineer_params
        params.require(:engineer).permit(:name, :username, :location, :experience, :bio)
    end

    def find_engineer
        @engineer = Engineer.find(params[:id])
    end
    
end
