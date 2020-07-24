class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all 
    end

    def create
        @appearance = Appearance.create(strong_params)

        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:myerrors] = @appearance.errors.full_messages
            redirect_to new_appearance_path 
        end

    end

    def strong_params
        params.require(:appearance).permit(:guest_id, :episode_id)
    end

end
