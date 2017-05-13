module PostsHelper
  def post_owner(post)
    current_user && post.user_id == current_user.id
  end
end
