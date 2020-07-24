class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def episodes_sorted_by_average_rating
        self.episodes.sort{|episode|episode.average_rating}
    end
end
