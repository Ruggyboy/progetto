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

ActiveRecord::Schema.define(version: 2019_09_17_190827) do

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.integer "member_2"
    t.integer "member_3"
    t.integer "member_4"
    t.integer "member_5"
    t.boolean "open"
    t.index ["user_id"], name: "index_bands_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.string "groupLocation"
    t.string "placeName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["groupLocation", "placeName"], name: "index_relationships_on_groupLocation_and_placeName", unique: true
    t.index ["groupLocation"], name: "index_relationships_on_groupLocation"
    t.index ["placeName"], name: "index_relationships_on_placeName"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "location"
    t.string "role"
    t.datetime "birth_date"
    t.boolean "admin", default: false
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.integer "group"
    t.string "provider"
    t.string "uid"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "remember_token"
    t.datetime "remember_created_at"
    t.boolean "leader", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
