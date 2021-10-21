class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.references :account, null: false, foreign_key: true
      t.string :activity_type
      t.date :activity_date
      t.string :activity_name
      t.timestamps
    end
  end
end
