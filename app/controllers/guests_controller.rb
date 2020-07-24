class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episodes = @guest.episodes
    @rating = @episodes.rating
  end
end
