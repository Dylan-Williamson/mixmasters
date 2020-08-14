class ServicesController < ApplicationController

    def index
        @services = Service.all
    end

    def show
        @service = Service.find(params[:id])
    end

    def create

    end

    private

    def service_params
        params.require(:service).permit(:title, :description, :requirements, :price)
    end
end
