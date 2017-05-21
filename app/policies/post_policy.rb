class PostPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def edit?
    user_is_owner_or_admin?
  end

  def update?
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    user_is_post_owner? || user_is_admin?
  end

  def user_is_admin?
    user && user.is_admin?
  end

  def user_is_post_owner?
    user && (user.id == post.user_id)
  end
end
