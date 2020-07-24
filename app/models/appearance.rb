class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :rating, :inclusion => 1..5
  validates_uniqueness_of :guest_id, scope: :episode_id, :message => "That appearance already exists!"
  validates_uniqueness_of :episode_id, scope: :guest_id, :message => "That appearance already exists!"
end
