# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_29_022355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "password"
    t.string "department"
    t.string "position"
    t.string "profile_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.string "link"
    t.text "notes"
    t.bigint "volunteer_id", null: false
    t.bigint "administrator_id", null: false
    t.index ["administrator_id"], name: "index_interviews_on_administrator_id"
    t.index ["volunteer_id"], name: "index_interviews_on_volunteer_id"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "password"
    t.boolean "approved"
    t.string "profile_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "interviews", "administrators"
  add_foreign_key "interviews", "volunteers"
end
