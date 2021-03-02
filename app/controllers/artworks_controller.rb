class ArtworksController < ApplicationController

  def new
    @artwork = Artwork.new
  end
end
