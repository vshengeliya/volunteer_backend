class Event < ApplicationRecord
    belongs_to :user
    has_many :attendances
    has_many :comments
end
