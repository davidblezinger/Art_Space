class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @booked_artworks = @user.bookings
      @rented_out_artworks = @user.artworks
    end
  end
