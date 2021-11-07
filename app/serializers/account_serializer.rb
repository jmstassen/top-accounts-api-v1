class AccountSerializer < ActiveModel::Serializer
  attributes :account_name, :id
  has_many :activities
  # has_many :person_accounts
  has_many :people, through: :person_accounts, serializer: PersonSerializer

  # def activities
  #   ActiveModelSerializers::SerializableResource.new(object.activities, each_serializer: ActivitySerializer)
  # end

end
