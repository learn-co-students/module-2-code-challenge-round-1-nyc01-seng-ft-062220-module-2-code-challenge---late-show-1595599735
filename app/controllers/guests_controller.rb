class GuestsController < ApplicationController
  before_action :set_episode, only: [:show]

  def index
    @guests = Guest.all
  end

  def show 
  end 
  
  private 
  
  def set_episode
    @guest = Guest.find(params[:id])
  end 

end
