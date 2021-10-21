class Activity < ApplicationRecord
    belongs_to :account
    has_many :person_activities
    has_many :people, through: :person_activities
end
