class Event < ApplicationRecord
  belongs_to :organizer
  belongs_to :region
end
