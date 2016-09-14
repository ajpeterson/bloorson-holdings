class UsersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @listings = @user.listings.order(:created_at).limit(5)

    render :'users/user_id/listings'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(get_user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :'users/new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def get_user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
