class SubcategoriesController < ApplicationController
  # before_filter :authenticate_user!
  def show
    @subcategory = Subcategory.find(params[:id])
    @user = current_user
    @reviews = @user.reviews.where(:subcategory_id => @subcategory).order(rating: :desc)

    if @reviews.empty?
      redirect_to user_path(@user)
    end
  end
end