class AccountSerializer < ActiveModel::Serializer
  attributes :account_name, :id
  
  has_many :activities do
    object.activities.order(activity_date: :desc)
  end
end
