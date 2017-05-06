module ApplicationHelper
  def current_user_is_admin
    current_user && current_user.is_admin?
  end

  def login_or_logout_user_link
    current_user ? logout_user_link : login_user_link
  end

  def login_user_link
    link_to 'Login', new_user_session_path
  end

  def logout_user_link
    link_to 'Logout', destroy_user_session_path, method: :delete
  end
end
