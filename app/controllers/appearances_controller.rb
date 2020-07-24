class AppearancesController < ApplicationController
    before_action :finding_appearance, only: [:show,:edit,:update]

    def index
        @appearances = Appearance.all
    end

    def show
    end

    def new
        @appearance= Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end

    def create
        @appearance = Appearance.create(appearances_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    def edit
        @episodes = Episode.all
        @guests = Guest.all
    end

    def update
        byebug
        if @appearance.update(appearances_params)
            redirect_to appearance_path(@appearance)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to edit_appearance_path
        end
    end

    private
    def appearances_params
        params.require(:appearance).permit(:episode_id,:guest_id,:ratings)
    end

    def finding_appearance
        @appearance = Appearance.find(params[:id])
    end




end
