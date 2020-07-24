class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates_inclusion_of :rating, in: 1..5
    validates_uniqueness_of :episode_id, scope: [:guest_id]  # I think this would validate unique guests per episode no?

end



