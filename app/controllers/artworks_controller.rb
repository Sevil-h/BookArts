class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @artworks = Artwork.global_search(params[:query])
    else
      @artworks = Artwork.all
    end
    @markers = @artworks.geocoded.map do |artwork|
      {
        lat: artwork.latitude,
        lng: artwork.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { artwork: artwork })
      }
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
    @booking = Booking.new
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = User.first # user should be the user logged into this session - needs to be added late
    if @artwork.save!
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to my_artworks_path
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :category, :description, :address, :rate, photos: [])
  end
end
