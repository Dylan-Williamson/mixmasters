class EngineersController < ApplicationController

    def new
        @engineer = Engineer.new
    end
    
    def index
        @engineers = Engineer.all
    end
    
    def show
        @engineer = Engineer.find(params[:id])
    end
    
    def edit
        @engineer = Engineer.find(params[:id])
    end

    def create
        @engineer = Engineer.create(engineer_params)
    end

    private

    def engineer_params
        params.require(:engineer).permit(:name, :username, :location, :experience, :bio)
    end
    
end
