class ReviewsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @reviews = Review.all
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review = @user.reviews.new(review_params)
    if @review.save
      redirect_to user_reviews_path(@user)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:location, :variety, :description, :rating)
  end
end
