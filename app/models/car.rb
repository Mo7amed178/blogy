class Car < ApplicationRecord
    validates :make, :model, :year, :sunroof, :color, presence: true

    validates :year, length: { minimum: 4,
    too_short: "%{count} is too short" }
end
