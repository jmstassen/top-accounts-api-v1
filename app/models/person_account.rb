class PersonAccount < ApplicationRecord
  belongs_to :person
  belongs_to :account
end
