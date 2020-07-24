class GuestsController < ApplicationController

  before_action :set_guest, except: [:index, :new, :create]


  def index
    @guests = Guest.all
  end

  def show
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end
end
