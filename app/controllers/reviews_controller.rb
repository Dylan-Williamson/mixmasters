class ReviewsController < ApplicationController
    before_action :find_order, only: [:new, :create]
    before_action :find_service, only: [:index]
    def new
        @review = Review.new
    end
    
    def create
        @review = current_user.reviews.create(review_params)
        @review.service_id = @order.service_id
        @review.order_id = @order.id
        if @review.valid?
            @review.save
            redirect_to @order
        else
            flash[:errors] = @review.errors.full_messages
            redirect_back(fallback_location: @order)
        end
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

    def find_service
        @service = Service.find_by_id(params[:service_id])
    end
end
