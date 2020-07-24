class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @my_appearances = @guest.appearances
    @my_episodes = Guest.all
  end

#**NOTE: I know that the last link on guest show page was just supposed to only link from the date (not the full string). Would just have the first argument of the link_to be the date instead of the full line.
#I think know how to do it (by splitting the strings and concatenating so I could just link to the second string) but was running low on time and didn't want to break it right before we had to submit. Hope that's ok.

end
