class ArtworksController < ApplicationController
  def show
    @artwork = Artwork.find(params[:id])
  end
end
