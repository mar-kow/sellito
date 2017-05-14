class HomepageController < ApplicationController
  def index
    @categories = Category.all
    @posts = Post.all
  end

  def about; end

  def cookies; end
end
