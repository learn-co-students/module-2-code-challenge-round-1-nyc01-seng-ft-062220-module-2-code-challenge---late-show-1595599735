class AppearancesController < ApplicationController
    #before_action :set_appearance, only: [:show,:edit,:update,:destroy] 

    def new 
        @appearance = Appearance.new 
        @guests = Guest.all 
        @episodes = Episode.all 
    end 

    def create 
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else 
            redirect_to new_appearance_path 
        end 
    end 

    private 

    def appearance_params 
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end 

    # def set_appearance
    #     @appearance = Appearance.find(params[:id])
    # end 


    
  end
  