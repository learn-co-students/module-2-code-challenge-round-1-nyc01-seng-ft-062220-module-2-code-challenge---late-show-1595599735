class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]
  
  def index
    @guests = Guest.all
  end

  def new 
    @guest = Guest.new
  end

  def create 

    @guest = Guest.create(guest_params)

    if @guest.valid?
      redirect_to guest_path(@guest)
    else
      redirect_to new_guest_path, form_errors: @guest.errors.full_messages
    end
  end

  def show 
    @appearances = @guest.appearances
  end

  def update 
    if @guest.update(guest_params)
      redirect_to guest_path(@guest)
    else
      redirect_to edit_guest_path(@guest), form_errors: @guest.errors.full_messages
    end
  end

  def edit 

  end

  def destroy 
    @guest.destroy
    redirect_to guests_path
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:date, :number)
  end
end
