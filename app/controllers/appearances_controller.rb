class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @appearance.errors.full_messages
    end

    def create
        if @appearance.vaild?
        @appearance = Appearance.create(params[:appearance_params])
        redirect_to episode_path(@appearance.episode_id)
        else
            flash[:appearance.errors.full_messages]
            redirect_to new_appearance_path
        end
    end

    private
    def appearance_params 
        params.require(:appearance).permit(:guest_id, :episode_id)
    end
end
