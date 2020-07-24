class AppearancesController < ApplicationController
    before_action :set_appearance, only: [:show, :edit, :update, :destroy]

    def index
        @appearances = Appearance.all 
    end

    def new
        @appearance = Appearance.new
    end

    def edit
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
            redirect_to episode_path(@appearance.episode)
        else
            flash[:error_messages] = @appearance.errors.full_messages
            redirect_to new_appearance_path(@appearance)
        end
    end


    def update
        #update with params
    end

    def destroy
        #destroy action
    end



    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end


    def set_appearance
        @appearance = Appearance.find(params[:id])
    end
end