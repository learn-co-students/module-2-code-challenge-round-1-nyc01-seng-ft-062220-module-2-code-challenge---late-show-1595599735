class EpisodesController < ApplicationController

  before_action :set_episode, except: [:index, :new, :create]

  def index
    @episodes = Episode.all
  end

  def show
    @avg_rating = @episode.appearances.map {|x| x.rating}.inject(0.0) { |sum, ele| sum + ele } / @episode.appearances.size
  end


  private

  def set_episode
    @episode = Episode.find(params[:id])
  end
end
