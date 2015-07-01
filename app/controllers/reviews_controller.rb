class ReviewsController < ApplicationController
  def index
    @user = current_user
    @reviews = @user.reviews.order(rating: :desc)
    # @user = User.find(params[:user_id])
    # @subcategory = Subcategory.find(params[:id])
    # @reviews = @subcategory.reviews
    # @subcategories = Subcategory.all
    # @reviews = Review.all.order(:category_id, :subcategory_id, :rating)
    # @reviews = @subcategories.reviews
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review = @user.reviews.new(review_params)
    @subcategory_id = @review.subcategory.id
    if @review.save
      redirect_to user_subcategory_path(@user.id, @subcategory_id)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:category_id, :subcategory_id, :location, :variety, :description, :rating)
  end
end




