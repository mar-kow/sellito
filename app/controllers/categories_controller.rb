class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category created!'
      redirect_to @category
    else
      flash[:alert] = 'Could not create a category.'
      redirect_back(fallback_location: root_path)
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(category_params)
    redirect_to @category
  end

  def destroy
   @category = Category.find(params[:id])
   @category.destroy
   flash[:notice] = "Category #{category.name} deleted"
   redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
