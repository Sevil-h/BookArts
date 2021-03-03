class ArtworksController < ApplicationController
  def show
    @artwork = Artwork.find(params[:id])
    @booking = Booking.new
  end
end
