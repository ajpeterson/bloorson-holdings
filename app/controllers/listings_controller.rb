class ListingsController < ApplicationController
  def index
    @listings = Listing.order(:created_at).limit(5)
  end

  def show
    @listing = Listing.find(params[:id])

    render 'show'
  end
end
