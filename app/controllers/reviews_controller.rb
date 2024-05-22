class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id

    if @review.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render 'restaurants/show'
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
