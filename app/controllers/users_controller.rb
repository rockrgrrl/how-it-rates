class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    if @user != current_user
    #   render 'show'
    # else
      redirect_to user_path(current_user)
    end
  end
end