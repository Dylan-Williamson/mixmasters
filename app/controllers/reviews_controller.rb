class ReviewsController < ApplicationController

    def create
        @review = @current_user.reviews.create(review_params)
        redirect_to review.order
    end

    def index
        @service = Service.find_by(id: params[:service_id])
        @reviews = Review.all.where(service_id: params[:service_id])
    end

    private
    
    def review_params
        params.require(:review).permit(:order_id)
    end
end
