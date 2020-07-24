class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    
    validates :ratings, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5, only_integer: true}
    validates_uniqueness_of :guest_id, scope: :episode_id

end
