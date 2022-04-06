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

ActiveRecord::Schema.define(version: 2022_04_06_143334) do

  create_table "bookings", force: :cascade do |t|
    t.text "status"
    t.integer "user_id_id", null: false
    t.integer "pet_id_id", null: false
    t.text "start_time"
    t.text "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id_id"], name: "index_bookings_on_pet_id_id"
    t.index ["user_id_id"], name: "index_bookings_on_user_id_id"
  end

  create_table "pets", force: :cascade do |t|
    t.integer "user_id_id", null: false
    t.text "pet_name"
    t.text "location"
    t.text "description"
    t.text "gender"
    t.text "photos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id_id"], name: "index_pets_on_user_id_id"
  end

  create_table "reviewings", force: :cascade do |t|
    t.text "stars"
    t.text "comments"
    t.integer "user_id_id", null: false
    t.integer "pet_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id_id"], name: "index_reviewings_on_pet_id_id"
    t.index ["user_id_id"], name: "index_reviewings_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "user_name"
    t.text "phone_number"
    t.text "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "pet_ids"
  add_foreign_key "bookings", "user_ids"
  add_foreign_key "pets", "user_ids"
  add_foreign_key "reviewings", "pet_ids"
  add_foreign_key "reviewings", "user_ids"
end
