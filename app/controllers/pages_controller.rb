class PagesController < ApplicationController
  def home
    if user_signed_in?
      redirect_to posts_path  
    end
  end

  def adulthood
  end

  def about
  end
end
