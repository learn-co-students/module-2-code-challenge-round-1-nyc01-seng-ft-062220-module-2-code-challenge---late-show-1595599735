class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def appearance_ratings(episode)
        self.appearances.find_by(episode: episode).ratings
    end

   
