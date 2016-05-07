class Admin::BaseController < ApplicationController
  before_action :is_admin?

  def is_admin?
    if current_user
      render file: "public/404.html" unless current_user.admin?
    else
      render file: "public/404.html"
    end
  end
end
