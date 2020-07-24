class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :edit, :update, :destroy]
  
  def index
    @episodes = Episode.all
  end

  def new 
    @episode = Episode.new
  end

  def create 

    @episode = Episode.create(episode_params)

    if @episode.valid?
      redirect_to episode_path(@episode)
    else
      redirect_to new_episode_path, form_errors: @episode.errors.full_messages
    end
  end

  def show 
    @guests = @episode.guests
  end

  def update 
    if @episode.update(episode_params)
      redirect_to episode_path(@episode)
    else
      redirect_to edit_episode_path(@episode), form_errors: @episode.errors.full_messages
    end
  end

  def edit 

  end

  def destroy 
    @episode.destroy
    redirect_to episodes_path
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:date, :number)
  end
end
