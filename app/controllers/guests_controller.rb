class GuestsController < ApplicationController
  before_action :set_episode, only: [:show]

  def index
    @guests = Guest.all
  end

  def show 
  end 
  
  private 
  def episode_params 
    params.require(:episode).permit(:date, :number)
  end 
  
  def set_episode
    @episode = Episode.find(params[:id])
  end 

end
