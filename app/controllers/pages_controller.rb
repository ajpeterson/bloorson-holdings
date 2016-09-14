class PagesController < ApplicationController
  def index
    @listings = Listing.order(:created_at).limit(6)
  end
end
