class ClientsController < ApplicationController
    before_action :find_client, only: [:edit, :update, :show, :destroy]

    def create
        @client = Client.create(client_params)
    end

    def edit
        render 'edit'
    end

    def update
        @client.update(client_params)
        redirect_to @client
    end

    def show
        render 'show'
    end

    def destroy
        @client.destroy
        redirect_to services_path
    end

    private

    def client_params
        params.require(:client).permit(:username, :password, :password_confirmation)
    end

    def find_client
        @client = Client.find(params[:id])
    end
end