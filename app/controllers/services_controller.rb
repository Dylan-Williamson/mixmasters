class ServicesController < ApplicationController

    def new
        @service = Service.new
    end

    def index
        @services = Service.all
    end

    def show
        @service = Service.find(params[:id])
    end

    def edit
        @service = Service.find(params[:id])
    end

    def create
        @service = Service.create(service_params)
        redirect_to @service
    end

    private

    def service_params
        params.require(:service).permit(:title, :description, :requirements, :price)
    end
end
