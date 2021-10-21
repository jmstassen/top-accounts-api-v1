class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :person_name
      t.string :person_type
      t.timestamps
    end
  end
end
