class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find[params[:id]]
  end

  def new

  end

  def create

  end
end
