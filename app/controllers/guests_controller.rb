class GuestsController < ApplicationController
  before_action :finding_guest, only: [:show,:edit,:update]
  def index
    @guests = Guest.all
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
  def guests_params
    params.require(:guest).permit(:name,:occupation)
  end

  def finding_guest
    @guest = Guest.find(params[:id])
  end
  
end
