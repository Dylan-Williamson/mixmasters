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
        if @service.update(service_params) == true
            @service.save
            redirect_to @service
        else
            flash[:errors] = @service.errors.full_messages
            redirect_back(fallback_location: @service)
        end
    end

    def create
        @service = Service.create(service_params)
        @service.user_id = current_user.id
        if @service.valid?
            @service.save
            redirect_to @service
        else
            flash[:errors] = @service.errors.full_messages
            redirect_back(fallback_location: @service)
        end
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
