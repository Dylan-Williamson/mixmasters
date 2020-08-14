class EngineersController < ApplicationController

    def new
        @engineer = Engineer.new
    end
    
    def index
        @engineers = Engineer.all
    end
    
    def show
        find_engineer
    end
    
    def edit
        find_engineer
    end

    def update
        find_engineer
        @engineer.update(engineer_params)
        redirect_to @engineer
    end

    def create
        @engineer = Engineer.create(engineer_params)
    end

    def destroy
        find_engineer
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
