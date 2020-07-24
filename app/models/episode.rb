class Episode < ApplicationRecord
    has_many :appearances, dependent: :destroy
    has_many :guests, through: :appearances


    def average_app_rating
       ratings = self.appearances.map {|app| app.rating}

       ratings.sum(0.0) / ratings.count
    end
end
