class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def episode_appearance_rating(guest)
        self.appearances.find_by_id(guest_id).rating
    end

end
