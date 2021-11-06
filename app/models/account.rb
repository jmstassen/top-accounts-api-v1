class Account < ApplicationRecord
  has_many :activities
  has_many :person_accounts
  has_many :people, through: :person_accounts
  validates :account_name, presence: true
end
