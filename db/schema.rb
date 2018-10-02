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

ActiveRecord::Schema.define(version: 2018_09_28_005656) do

  create_table "contacts", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "type", default: 0, null: false
    t.string "label", null: false
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_contacts_on_member_id"
  end

  create_table "creative_fields", force: :cascade do |t|
    t.integer "member_id", null: false
    t.string "field", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_creative_fields_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "member_name", null: false
    t.string "icon_img"
    t.string "header_img"
    t.string "title"
    t.text "description"
    t.integer "align", default: 0
    t.text "profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_name"], name: "index_members_on_member_name", unique: true
  end

end
