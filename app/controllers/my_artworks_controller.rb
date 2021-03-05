class MyArtworksController < ApplicationController
  def index
    @my_artworks = Artwork.where(user: current_user)
  end
end
