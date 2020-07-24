class Guest < ApplicationRecord
    has_many :appearances, dependent: :destroy
    has_many :episodes, through: :appearances

    def sort_appearances
        self.appearances.sort_by{|app| app.rating}.reverse!
    end

    def avg_rating
       ratings = self.appearances.map {|app| app.rating}

       ratings.sum(0.0) / ratings.count
    end
end
