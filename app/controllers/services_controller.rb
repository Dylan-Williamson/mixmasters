class ServicesController < ApplicationController
    load_and_authorize_resource
    before_action :find_service, only: [:show, :edit, :update, :destroy]

    def new
        @service = Service.new
    end

    def index
        @services = Service.all
    end

    def show
    end

    def edit
    end

    def update
        @service.update(service_params)
        redirect_to @service
    end

    def create
        @service = Service.create(service_params)
        @service.update(user_id: current_user.id)
        redirect_to @service
    end
    
    def destroy
        @service.destroy
        redirect_to services_path
    end

    private

    def service_params
        params.require(:service).permit(:title, :description, :requirements, :price, :user_id)
    end

    def find_service
        @service = Service.find(params[:id])
    end
end
