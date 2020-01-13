# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_13_080456) do

  create_table "addresses", force: :cascade do |t|
    t.string "zipcode"
    t.string "prefecture"
    t.string "first_address"
    t.string "second_adderess"
    t.string "third_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pays", force: :cascade do |t|
    t.integer "user_id"
    t.integer "card_number"
    t.integer "year"
    t.integer "momth"
    t.integer "security_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pays_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nicname", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name_rattle", default: "", null: false
    t.string "last_name_rattle", default: "", null: false
    t.integer "birthyear", null: false
    t.integer "birthmonth", null: false
    t.integer "birthday", null: false
    t.text "introduction"
    t.text "image"
    t.string "password", default: "", null: false
    t.integer "phone_number", null: false
    t.string "email", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
