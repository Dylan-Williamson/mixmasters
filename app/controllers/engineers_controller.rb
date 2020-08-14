class EngineersController < ApplicationController

    def index
        @engineers = Engineer.all
    end

    def show

    end

    
end
