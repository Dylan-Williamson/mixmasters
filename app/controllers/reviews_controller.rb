class ReviewsController < ApplicationController

    def create
        review = @current_user.reviews.create(review_params)
        redirect_to review.order
    end

    private
    
    def review_params
        params.require(:review).permit(:order_id)
    end
end
