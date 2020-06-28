class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
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
