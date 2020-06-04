class CabinsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @cabins = Cabin.geocoded.where("localisation ILIKE ?", "%#{params[:query]}%")
      markers_cabins
    else
      @cabins = Cabin.geocoded
      markers_cabins
    end
  end

  def new
    @cabin = Cabin.new
  end

  def show
    @cabin = Cabin.find(params[:id])
    @booking = Booking.new
  end

  def create
    @cabin = Cabin.new(cabin_params)
    @cabin.user = current_user

    respond_to do |format|
      if @cabin.save
        format.html { redirect_to @cabin, notice: 'Cabin was successfully created.' }
        format.json { render :show, status: :created, location: @cabin}
      else
        format.html { render :new }
        format.json { render json: @cabin.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def cabin_params
    params.require(:cabin).permit(:title, :description, :localisation, :price_per_night, :beds, photos: [])
  end

  def markers_cabins
    @markers = @cabins.map do |cabin|
        {
          lat: cabin.latitude,
          lng: cabin.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { cabin: cabin })
        }
      end
  end
end
