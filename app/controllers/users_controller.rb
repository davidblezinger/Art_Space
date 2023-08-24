class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @bookings = @user.bookings
      @rented_out_artworks = @user.artworks
    end
  end
