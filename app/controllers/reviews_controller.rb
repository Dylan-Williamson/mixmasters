class ReviewsController < ApplicationController
    before_action :find_order, only: [:new, :create, :index]
    
    def new
        @review = Review.new
    end
    def create
        @review = current_user.reviews.create(review_params)
        @review.service_id = @order.service_id
        @review.update(order_id: @order.id)
        redirect_to @review.order
    end

    def index
        @reviews = Review.all.where(service_id: params[:service_id])
    end
    
    private
    
    def review_params
        params.require(:review).permit(:order_id, :content, :rating)
    end
    
    def find_order
        @order = Order.find_by_id(params[:order_id])
    end
end
