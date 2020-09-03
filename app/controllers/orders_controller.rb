class OrdersController < ApplicationController
    before_action :find_order, only: [:show, :update]
    before_action :find_service, only: [:new, :create]
    
    def new
        @order = Order.new
    end
    
    def create
        @order = Order.create(order_params)
        @order.user_id = current_user.id
        @order.service_id = @service.id
        if @order.valid?
            @order.save
            redirect_to @order
        else
            flash[:errors] = @order.errors.full_messages
            redirect_back(fallback_location: @order)
        end
    end

    def update
        if @order.update(order_params) == true
            @order.save
            redirect_to @order
        else
            flash[:errors] = @order.errors.full_messages
            redirect_back(fallback_location: @order)
        end
    end


    def index
        @orders = Order.where(user_id: current_user.id)
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
