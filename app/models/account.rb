class Account < ApplicationRecord
  has_many :activities, dependent: :destroy
  validates :account_name, presence: true
end
