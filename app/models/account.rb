class Account < ApplicationRecord
    has_many :activities
    has_many :person_accounts
    has_many :people, through: :person_accounts
end
