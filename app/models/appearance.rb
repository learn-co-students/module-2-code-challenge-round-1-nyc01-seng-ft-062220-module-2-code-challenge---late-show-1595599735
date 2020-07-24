class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  # Question 6 (Advanced) 
  validates_uniqueness_of :guest_id, :scope => :episode_id
end
