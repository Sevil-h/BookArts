class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def destroy
  @artwork = Artwork.find(params[:id])
  @artwork.destroy
  redirect_to artworks_path(@artwork)
  end
end
