class ServicesController < ApplicationController

    def new
        @service = Service.new
    end

    def index
        @services = Service.all
    end

    def show
        find_service
    end

    def edit
        find_service
    end

    def update
        find_service
        @service.update(service_params)
        redirect_to @service
    end

    def create
        @service = Service.create(service_params)
        redirect_to @service
    end

    def destroy
        find_service
        @service.destroy
        redirect_to services_path
    end

    private

    def service_params
        params.require(:service).permit(:title, :description, :requirements, :price)
    end

    def find_service
        @service = Service.find(params[:id])
    end
end
