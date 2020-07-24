class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all 
    end

    def create 

        @appearance = Appearance.create(appearance_params)

        if @appearance.valid?
            redirect_to episode_path(@appearance.episode.id)
        else
            redirect_to new_appearance_path, form_errors: @appearance.errors.full_messages
        end

    end

    private

    def appearance_params 
        params.require(:appearance).permit(:guest_id,:episode_id,:rating)
    end
end
