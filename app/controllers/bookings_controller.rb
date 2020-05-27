class BookingsController < ApplicationController
  def index
    @booking = Booking.all
  end
  def new
    @booking = Booking.new
  end
    def show
    @booking = Booking.find(params[:id])
  end
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path
  end
  def create
  end
end
