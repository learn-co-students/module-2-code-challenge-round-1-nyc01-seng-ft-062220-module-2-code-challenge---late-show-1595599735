class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
            redirect_to episode_path(@appearance.episode)
        else
            flash[:list_errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    
    end

  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
