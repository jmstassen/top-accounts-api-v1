class CreatePersonAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :person_accounts do |t|
      t.references :person, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.integer :person_account_role
      t.timestamps
    end
  end
end
