class Guest < ApplicationRecord
    has_many :apperarances
    has_many :episodes, through: :apperarances
end
