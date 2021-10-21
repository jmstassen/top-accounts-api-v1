class AccountSerializer < ActiveModel::Serializer
  has_many :activities, serializer: ActivitySerializer
  # has_many :person_accounts
  has_many :people, through: :person_accounts, serializer: PersonSerializer

  attributes :account_name
end
