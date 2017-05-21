class HomepageController < ApplicationController
  def index
    @categories = Category.all
    @featured_posts = Post.featured_posts
  end

  def about; end

  def cookies; end
end
