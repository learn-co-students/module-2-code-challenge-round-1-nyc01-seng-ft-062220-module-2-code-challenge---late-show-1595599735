class AppearancesController < ApplicationController

    before_action :set_appearance, except: [:index, :new, :create]

    def new
        @appearance = Appearance.new
    end

    def create
       @appearance = Appearance.create(appearance_params)
        redirect_to episode_path(@appearance.episode.id)
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

    def set_appearance
        @appearance = Appearance.find(params[:id])
    end
end
