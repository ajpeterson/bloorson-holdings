class PagesController < ApplicationController
  def index
    @listings = Listing.order(:created_at).limit(6)
  end

  def show
    @listing = Listing.find(params[:id])

    render :'pages/show'
  end
end
