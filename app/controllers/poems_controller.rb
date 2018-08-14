class PoemsController < ApplicationController

  def index
    @poems = Poem.includes(:user).order("created_at DESC")
    @user = User.new
  end

  def new
    @poem = Poem.new
  end

  def create
    Poem.create(image: poem_params[:image], text: poem_params[:text])
  end

  def destroy

  end
  def show
    @user = User.new
  end

  private
  def poem_params
    params.permit(:text, :image)
  end

end
