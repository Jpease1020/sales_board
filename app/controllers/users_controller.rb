class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.permit(:user).require(:name, :email, :password, :password_confirmation)
  end
end