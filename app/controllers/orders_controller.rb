class OrdersController < ApplicationController
    before_action :find_order, only: [:show, :update]

    def new
        @order = Order.new
    end

    def create
        @order = Order.create(order_params)
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
        params.require(:order).permit(:username)
    end

    def find_order
        @order = Order.find(params[:id])
    end
end
