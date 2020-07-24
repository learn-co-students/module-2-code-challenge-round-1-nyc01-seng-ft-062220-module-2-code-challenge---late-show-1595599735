class Episode < ApplicationRecord
    has_many :apperarances
    has_many :guests, through: :apperarances
end
