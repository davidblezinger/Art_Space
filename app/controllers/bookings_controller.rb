class BookingsController < ApplicationController
  def new
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new(booking_params)
    @booking.artwork = @artwork
    @booking.user = current_user
    @rental_price = calculate_price(@artwork, @booking)
    @booking.booking_price = @rental_price
    if @booking.save
      redirect_to user_path(current_user)
    else
      render "artworks/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def calculate_price(artwork, booking)
    days = booking.end_date - booking.start_date
    (artwork.price / 30 * days).round(2)
  end
end
