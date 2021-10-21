class CreatePersonActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :person_activities do |t|
      t.references :person, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.integer :person_activity_role
      t.timestamps
    end
  end
end
