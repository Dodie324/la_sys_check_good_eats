class ReviewsController < ApplicationController
  # def show
  #   @review = Review.find(params[:id])
  # end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = params[:restaurant_id]
    if @review.save
      flash[:notice] = "Review saved. Hopefully it was nice!"
      redirect_to restaurant_path(params[:restaurant_id])
    else
      flash[:alert]  = "Review not saved"
      redirect_to restaurant_path(params[:restaurant_id])
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
