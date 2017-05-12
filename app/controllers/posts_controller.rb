class PostsController < ApplicationController

  def index
    @posts = current_user.posts
  end

  def new
    @post = Post.new
  end

  def create
    return unless params[:user_id] == current_user.id.to_s
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'Post created!'
      redirect_to @post
    else
      flash[:alert] = 'Could not create a post!'
      redirect_back(fallback_location: root_path)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
     params.require(:post).permit(:title, :description, :expiration_date, :user_id)
  end
end
