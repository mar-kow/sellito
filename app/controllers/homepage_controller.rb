class HomepageController < ApplicationController
  def index
    @categories = Category.all
  end

  def about; end

  def cookies; end
end
