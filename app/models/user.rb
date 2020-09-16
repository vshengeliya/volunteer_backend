class User < ApplicationRecord
    has_many: attendances
    has_many: events, through: :attendances
    has_many :my_events, through: :attendances, source: event
end
