class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        self.appearances.map { |a| a.rating}.sum / self.appearances.count
    end

    def top_rating
        self.appearances.sort_by {|t| t.rating}
    end

end
