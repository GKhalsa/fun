class Admin::UsersController < Admin::BaseController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "User Successfully Created"
      redirect_to admin_users_path
    else
      flash.now[:error] = "something went wrong"
      render :new
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
