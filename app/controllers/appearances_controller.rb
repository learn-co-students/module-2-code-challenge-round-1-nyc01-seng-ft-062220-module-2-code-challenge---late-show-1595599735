class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end

    def create
        appearance = Appearance.new(params_method)
        if appearance.save
            redirect_to episode_path(appearance.episode)
        else
            flash[:user_error] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def params_method
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end

end
  