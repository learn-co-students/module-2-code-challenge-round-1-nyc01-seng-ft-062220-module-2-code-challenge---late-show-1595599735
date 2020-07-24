class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: {greater_than: 0, less_than:6}
    validates_uniqueness_of :episode_id, :scope => :guest_id, :message => "Cannot have duplicated appearances"

end
