class HomepageController < ApplicationController
  def index
    @categories = Category.all
    @posts = Post.all.includes(:categories)
  end

  def about; end

  def cookies; end
end
