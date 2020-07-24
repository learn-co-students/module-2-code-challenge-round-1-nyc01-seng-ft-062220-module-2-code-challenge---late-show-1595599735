class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @epsiode = Episode.find(params[:id])
    @guests = @episode.guests
  end
end
