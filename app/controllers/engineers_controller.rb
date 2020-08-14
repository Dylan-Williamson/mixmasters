class EngineersController < ApplicationController

    def index
        @engineers = Engineer.all
    end

    def show
        @engineer = Engineer.find(params[:id])
    end

    def create

    end

    def engineer_params
        params.require(:engineer).permit(:name, :username, :location, :experience, :bio)
    end
    
end
