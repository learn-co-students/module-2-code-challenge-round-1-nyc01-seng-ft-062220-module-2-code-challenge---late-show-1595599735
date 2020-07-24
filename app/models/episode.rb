class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def avg_rating
        sum = 0
        total = self.appearances.map { |appearance| sum += appearance.rating}.count
        if sum > 0
        avgerage_rating = sum / total
        end
        avgerage_rating
      end
end
