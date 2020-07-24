class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all

    end

    def create
        @appearance = Appearance.create(appearance_params)
        @episode = @appearance.episode_id

        if @appearance
            flash[:success] = "New appearance successfully created"
            redirect_to episode_path(@episode)
        else
            flash[:my_error] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end

    end

    private
    def appearance_params
        params(:appearance).require(:rating, guest_id, episode_id)
    end

end
