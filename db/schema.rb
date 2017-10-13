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

ActiveRecord::Schema.define(version: 20171011030420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charities", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.string "name", null: false
    t.string "description", null: false
    t.string "banner_image"
    t.string "donation_url"
    t.string "website_url"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_charities_on_group_id"
  end

  create_table "faqs", force: :cascade do |t|
    t.bigint "group_id"
    t.string "question"
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_faqs_on_group_id"
  end

  create_table "group_details", force: :cascade do |t|
    t.bigint "group_id"
    t.text "about_us"
    t.text "initiatives"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_details_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name", null: false
    t.string "donation_url"
    t.string "homepage_banner_image"
    t.string "logo_image"
    t.string "favicon_image"
    t.string "favicon_image_16_by_16"
    t.string "favicon_image_32_by_32"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_groups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.integer "role", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "faqs", "groups"
end
