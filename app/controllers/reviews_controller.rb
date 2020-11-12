class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    @review.restaurant = @restaurant
  end

  def create
    review = Review.new(review_params)
    restau = Restaurant.find(params[:restaurant_id])
    review[:restaurant_id] = restau.id
    if review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end


  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
