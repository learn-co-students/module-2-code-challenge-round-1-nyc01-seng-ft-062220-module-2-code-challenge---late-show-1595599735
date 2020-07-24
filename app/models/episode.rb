class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def average_rating
        appearances = self.appearances.each {|each| each.rating }
        rating_total = appearances.reduce(0) {|sum, each| sum + each.rating} 
        average = rating_total / appearances.length
    end

    def highest_rated
        appearances = self.appearances.each {|each| each.rating }
        rating_max = appearances.sort_by {|a| a.rating}.last 
    end
end
