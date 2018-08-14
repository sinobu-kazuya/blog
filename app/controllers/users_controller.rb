class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to new_user_path
  end
  def show
    redirect_to root_path
  end
end
