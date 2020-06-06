class DashboardsController < ApplicationController
  def show
    @cabins = Cabin.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
