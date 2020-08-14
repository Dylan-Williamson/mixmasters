class EngineersController < ApplicationController

    def index
        @engineers = Engineer.all
    end

    def show
        @engineer = Engineer.find(params[:id])
    end

    def create

    end
    
end
