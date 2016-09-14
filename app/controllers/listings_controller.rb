class ListingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @listings = @user.listings.all
  end

  def create
    @user = User.find(params[:user_id])
    @listing = @user.listings.new(listing_params)

    if @listing.save
      redirect_to user_listing_url(user_id: @listing.user.id, id: @listing.id)
    else
      render 'new'
    end
  end

  def new
    @listing = Listing.new
  end

  def show
    @user = User.find(params[:user_id])
    @listing = Listing.find(params[:id])
  end

  private
  def listing_params
    params.require(:listing).permit(:address, :city, :state, :zip, :description)
  end
end
