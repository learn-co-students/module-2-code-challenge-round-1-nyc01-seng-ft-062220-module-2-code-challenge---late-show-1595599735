class AppearancesController < ApplicationController
    before_action :find_appearance, only: [:show, :edit, :update, :destroy]
    def index
        @appearances = Appearance.all
    end

    def show

    end

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
            flash[:errors] = @appearance.errors.messages
            redirect_to new_appearance_path
        end
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def find_appearance
        @appearance = Appearance.find(params[:id])
    end
    
    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
