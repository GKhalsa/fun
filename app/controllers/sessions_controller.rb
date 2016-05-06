class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      flash[:message] = "you have successfully logged in"
      session[:user_id] = @user.id
      redirect_to items_path
    else
      flash.now[:error] = "Please try to login again"
      render :new
    end
  end
end
