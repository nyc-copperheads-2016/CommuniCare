# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160111164955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer  "appointment_id",       null: false
    t.integer  "on_call_caregiver_id"
    t.string   "body"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer  "caregiver_relationship_id"
    t.date     "date"
    t.string   "duration"
    t.datetime "start_time"
    t.string   "details"
    t.boolean  "pc_confirmed"
    t.boolean  "occ_confirmed"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "badges", force: :cascade do |t|
    t.integer  "on_call_caregiver_id", null: false
    t.string   "type",                 null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "badges_sashes", force: :cascade do |t|
    t.integer  "badge_id"
    t.integer  "sash_id"
    t.boolean  "notified_user", default: false
    t.datetime "created_at"
  end

  add_index "badges_sashes", ["badge_id", "sash_id"], name: "index_badges_sashes_on_badge_id_and_sash_id", using: :btree
  add_index "badges_sashes", ["badge_id"], name: "index_badges_sashes_on_badge_id", using: :btree
  add_index "badges_sashes", ["sash_id"], name: "index_badges_sashes_on_sash_id", using: :btree

  create_table "caregiver_relationships", force: :cascade do |t|
    t.integer  "primary_caregiver_id"
    t.integer  "on_call_caregiver_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "address",         null: false
    t.string   "city",            null: false
    t.string   "state",           null: false
    t.string   "password_digest"
    t.integer  "zipcode",         null: false
    t.integer  "loginable_id"
    t.string   "loginable_type"
    t.string   "phone",           null: false
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "logins", ["loginable_type", "loginable_id"], name: "index_logins_on_loginable_type_and_loginable_id", using: :btree

  create_table "merit_actions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "action_method"
    t.integer  "action_value"
    t.boolean  "had_errors",    default: false
    t.string   "target_model"
    t.integer  "target_id"
    t.text     "target_data"
    t.boolean  "processed",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merit_activity_logs", force: :cascade do |t|
    t.integer  "action_id"
    t.string   "related_change_type"
    t.integer  "related_change_id"
    t.string   "description"
    t.datetime "created_at"
  end

  create_table "merit_score_points", force: :cascade do |t|
    t.integer  "score_id"
    t.integer  "num_points", default: 0
    t.string   "log"
    t.datetime "created_at"
  end

  create_table "merit_scores", force: :cascade do |t|
    t.integer "sash_id"
    t.string  "category", default: "default"
  end

  create_table "on_call_caregivers", force: :cascade do |t|
    t.string   "education"
    t.string   "credentials"
    t.string   "about"
    t.string   "specialities"
    t.string   "experience"
    t.string   "hobbies"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "sash_id"
    t.integer  "level",        default: 0
  end

  create_table "patients", force: :cascade do |t|
    t.string   "gender"
    t.string   "habits"
    t.string   "routine"
    t.string   "ailments"
    t.string   "medication"
    t.string   "name"
    t.string   "background"
    t.integer  "age"
    t.string   "hobbies"
    t.integer  "primary_caregiver_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "primary_caregivers", force: :cascade do |t|
    t.string   "about_me"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "sash_id"
    t.integer  "level",      default: 0
  end

  create_table "reminders", force: :cascade do |t|
    t.datetime "time",           null: false
    t.string   "body",           null: false
    t.integer  "appointment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "body",           null: false
    t.integer  "rating",         null: false
    t.integer  "appointment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sashes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
