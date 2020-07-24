class AppearancesController < ApplicationController

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(app_params)
        

        if @appearance.valid?
            redirect_to episode_path(@appearance.episode_id)
        else
            flash[:all_errors] = @appearance.errors.full_messages
            flash[:alert] = "The guest has already appeared on that episode"
            redirect_to new_appearance_path
        end
    end

    private

    def app_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end

