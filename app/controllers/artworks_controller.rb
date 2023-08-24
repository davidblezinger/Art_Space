class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
    users = User.all.geocoded.filter { |u| !u.artworks.empty? }
    @markers = users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {artworks: user.artworks, user: user})
      }
    end
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
