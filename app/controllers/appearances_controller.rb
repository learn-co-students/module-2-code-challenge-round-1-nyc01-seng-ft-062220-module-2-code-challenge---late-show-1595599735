class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new 
        @guests = Guest.all 
        @episodes = Episode.all 
    end 

    def create 
        @appearance = Appearance.new(s_params)
        if @appearance.save 
            redirect_to episode_path(@appearance.episode)
        else 
            flash[:user_error] = @appearance.errors.full_messages
            redirect_to new_appearance_path 
        end 
    end

    private 

    def s_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
