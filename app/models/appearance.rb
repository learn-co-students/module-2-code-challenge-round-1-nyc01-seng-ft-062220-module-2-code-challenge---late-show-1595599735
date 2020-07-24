class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, numericality: {greater_than: 0, less_than: 6}
    validates :guest, uniqueness: true
    #not sure how to valid guest with episode
    #currently it won't let me pick the same guest multiple times for any appearance
end