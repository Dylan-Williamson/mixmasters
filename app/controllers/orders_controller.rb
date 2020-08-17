class OrdersController < ApplicationController
    before_action :find_order, only: [:show, :update]

    def create
        @order = Order.create(order_params)
    end

    def update
        @order.update(order_params)
        redirect_to @order
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
