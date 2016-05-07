module ApplicationHelper
  def login_or_logout
    if current_user
      link_to "logout", logout_path, method: :delete
    else
      link_to "login", login_path
    end
  end

  def dashboard_if_admin
    if current_user
      link_to "dashboard", admin_dashboard_path if current_user.admin?
    end
  end
end
