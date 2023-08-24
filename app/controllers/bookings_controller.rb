class BookingsController < ApplicationController
  def new
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new(booking_params)
    @valid_timeslot = check_timeslots(@artwork, @booking)
    @booking.artwork = @artwork
    @booking.user = current_user
    if @valid_timeslot
      @booking.save
      redirect_to artwork_path(@artwork)
    else
      render "artworks/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def check_timeslots(artwork, new_booking)
    valid_timeslot = true
    artwork.bookings.each do |booking|
      unless new_booking.start_date > booking.end_date || new_booking.end_date < booking.start_date
        valid_timeslot = false
      end
    end
    return valid_timeslot
  end
end
