class EpisodesController < ApplicationController
  before_action :finding_episode, only: [:show,:edit,:update]
  def index
    @episodes = Episode.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private
  def episodes_params
    params.require(:episode).permit(:date, :number)
  end

  def finding_episode
    @episode = Episode.find(params[:id])
  end
  
end
