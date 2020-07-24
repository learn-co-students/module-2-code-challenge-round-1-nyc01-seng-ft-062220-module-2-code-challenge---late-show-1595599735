class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all
  end

  def new
      @episodes = Episode.new
  end

  def edit
  end

  def create
      #create with params
  end


  def update
      #update with params
  end

  def destroy
      #destroy action
  end


  private

  def episode_params
  end

  def set_episode
    @episode = Episode.find(params[:id])
  end

end
