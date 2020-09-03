class OrdersController < ApplicationController
    before_action :find_order, only: [:show, :update]
    before_action :find_service, only: [:new, :create]
    def new
        @order = Order.new
    end
    
    def create
        @order = Order.create(order_params)
        @order.user_id = current_user.id
        @order.update(service_id: @service.id)
        redirect_to @order
    end

    def update
        @order.update(order_params)
        redirect_to @order
    end

    def index
        @orders = Order.all
        render 'index'
    end

    def show
        render 'show'
    end

    private

    def order_params
        params.require(:order).permit(:email, :user_id, :service_id)
    end

    def find_order
        @order = Order.find(params[:id])
    end

    def find_service
        @service = Service.find_by_id(params[:service_id])
    end
end
