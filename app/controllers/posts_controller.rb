class PostsController < ApplicationController
  def index
    if user_signed_in?
      @category_ids = current_user.category_ids
      @posts = Post.joins(:post_categories).where(post_categories: {category_id: @category_ids})
    else
      @posts = Post.where(private: false)
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
