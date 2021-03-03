class DashboardsController < ApplicationController
  def show
    @requests = Booking.where(user: current_user)
    @my_bookings = Booking.all.select{ |booking| booking.artwork.user == current_user }
  end
end
