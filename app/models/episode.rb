class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        if appearances.any? 
            (self.appearances.sum{|appearance| appearance.rating}/self.appearances.count.to_f).ceil(2)
        else
            "N/A"
        end
    end
end
