class BookingsController < ApplicationController
  # def new
  #   @artwork = Artwork.find(params[:artwork_id])
  #   @booking = @artwork.bookings.new
  #   @booking.user = current_user
  # end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.artwork = @artwork
    @booking.approval = false
    if @booking.save
      flash[:notice] = "Your artwork has been booked"
      redirect_to artwork_path(@artwork)
    else
      flash[:notice] = "Booking unsuccessful"
      render "artworks/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
