# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_20_031112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "account_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "activities", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.string "activity_type"
    t.date "activity_date"
    t.string "activity_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_activities_on_account_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "person_name"
    t.string "person_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "person_accounts", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "account_id", null: false
    t.integer "person_account_role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_person_accounts_on_account_id"
    t.index ["person_id"], name: "index_person_accounts_on_person_id"
  end

  create_table "person_activities", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "activity_id", null: false
    t.integer "person_activity_role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_person_activities_on_activity_id"
    t.index ["person_id"], name: "index_person_activities_on_person_id"
  end

  add_foreign_key "activities", "accounts"
  add_foreign_key "person_accounts", "accounts"
  add_foreign_key "person_accounts", "people"
  add_foreign_key "person_activities", "activities"
  add_foreign_key "person_activities", "people"
end
