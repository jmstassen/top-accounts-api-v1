class ActivitySerializer < ActiveModel::Serializer
  belongs_to :account
  has_many :person_activities
  has_many :people, through: :person_activities

  attributes :id, :activity_type, :activity_date, :activity_name, :people

  def people
    ActiveModelSerializers::SerializableResource.new(object.people, each_serializer: PersonSerializer)
  end

end
