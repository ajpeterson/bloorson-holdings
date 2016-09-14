class ListingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @listings = @user.listings.all
  end

  def new
    @listing = Listing.new
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

  def show
    @user = User.find(params[:user_id])
    @listing = Listing.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @listing = Listing.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @listing = @user.listings.find(params[:id])

    if @listing.update(listing_params)
      redirect_to user_listing_url(user_id: @listing.user.id, id: @listing.id)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @listing = @user.listings.find(params[:id])

    @listing.destroy

    redirect_to user_listings_url(user_id: @listing.user.id)
  end

  private
  def listing_params
    params.require(:listing).permit(:address, :city, :state, :zip, :description)
  end
end
