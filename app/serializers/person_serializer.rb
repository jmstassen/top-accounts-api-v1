class PersonSerializer < ActiveModel::Serializer
  # has_many :person_accounts
  # has_many :person_activities
  # has_many :accounts, through: :person_accounts
  # has_many :activities, through: :person_activities

  attributes :id, :person_name
end
