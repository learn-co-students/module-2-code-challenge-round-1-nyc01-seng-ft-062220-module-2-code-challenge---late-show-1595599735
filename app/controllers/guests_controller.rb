class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  def index
    @guests = Guest.all
  end

  def new
      @Guest = Guest.new
  end

  def edit
  end

  def create
      #create with params
  end


  def update
      #update with params
      #check for validity
  end

  def destroy
      #destroy action
  end

  private

  def guest_params
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end
end
