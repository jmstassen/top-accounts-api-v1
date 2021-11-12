class Activity < ApplicationRecord
    belongs_to :account
    has_many :person_activities
    has_many :people, through: :person_activities
    validates :activity_type, presence: true
    validates_inclusion_of :activity_type, :in => ['meeting', 'email', 'event', 'summary', 'objective', 'financial', 'document']

end
