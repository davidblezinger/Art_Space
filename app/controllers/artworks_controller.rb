class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
  end

  def show
    # CHANGED THE "()" INSIDE PARAMS :ID
    @artwork = Artwork.find(params[:id])
    @booking = Booking.new
    @markers = {
        lat: @artwork.user.latitude,
        lng: @artwork.user.longitude
      }
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:photo, :title, :description, :category, :price)
  end
end
