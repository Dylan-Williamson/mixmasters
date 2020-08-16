class ServicesController < ApplicationController
    
    before_action :find_service, only: [:show, :edit, :update, :destroy]

    def new
        @service = Service.new
        render 'new'
    end

    def index
        @services = Service.all
        render 'index'
    end

    def show
        render 'show'
    end

    def edit
        render 'edit'
    end

    def update
        @service.update(service_params)
        redirect_to @service
    end

    def create
        @service = Service.create(service_params)
        redirect_to @service
    end

    def destroy
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
