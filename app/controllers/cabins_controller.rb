class CabinsController < ApplicationController
  def index
    @cabins = Cabin.all
  end

  def new
    @cabin = Cabin.new
  end

  def show
    @cabin = Cabin.find(params[:id])
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
    params.require(:cabin).permit(:title, :description, :localisation, :price_per_night, :beds)
  end
end
