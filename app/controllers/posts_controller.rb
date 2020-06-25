class PostsController < ApplicationController
  def index
    if user_signed_in?
      @posts = Post.all
    else
      @posts = Post.where(category: )
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
