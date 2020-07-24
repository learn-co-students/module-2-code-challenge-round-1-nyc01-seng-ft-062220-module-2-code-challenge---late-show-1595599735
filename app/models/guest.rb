class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def top_rate
        self.appearances.sort_by {|t| t.rating}
    end
    
end
