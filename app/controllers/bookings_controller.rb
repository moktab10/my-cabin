class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
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
    @booking = Booking.new(find_booking)
    @booking.user = current_user
    @booking.cabin = Cabin.find(params[:cabin_id])

    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_path(@booking), notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking}
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_booking
    params.require(:booking).permit(:start_date, :end_date, :number_of_guests)
  end
end
