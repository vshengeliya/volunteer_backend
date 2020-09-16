class User < ApplicationRecord
    has_many :attendances
    has_many :events
    has_many :my_attendances, through: :attendances, source: :event
end
