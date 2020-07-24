class AppearancesController < ApplicationController
    def new
        @appearance=Appearance.new 
    end 

    def show
        @appearance=Appearance.find(params[:id])
    end

    def create 
        @appearance=Appearance.create(appearance_params)
        redirect_to episode_path(@episode)
    end


    private 
    def appearance_params 
        params.require(:appearance).permit(:guest_id, :episode_id)
    end
end
