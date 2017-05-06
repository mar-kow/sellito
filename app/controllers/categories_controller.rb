class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    Category.create(category_params)
    flash[:notice] = 'Category created!'
    redirect_back(fallback_location: root_path)
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
