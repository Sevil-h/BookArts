class DashboardsController < ApplicationController
  def show
    @requests = Booking.where(user: current_user)
    @my_bookings = Booking.where()
  end
end
