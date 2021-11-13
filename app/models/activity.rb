class Activity < ApplicationRecord
    belongs_to :account
    validates :activity_type, presence: true
    validates_inclusion_of :activity_type, :in => ['meeting', 'email', 'event', 'summary', 'objective', 'financial', 'document']

end
