class HomepageController < ApplicationController
  def index
    @categories = Category.all
    @posts = Post.all.includes(:categories).order('created_at DESC').limit(12)
  end

  def about; end

  def cookies; end
end
