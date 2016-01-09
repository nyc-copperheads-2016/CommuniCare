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

ActiveRecord::Schema.define(version: 20160108235144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer  "caregiver_relationship_id"
    t.string   "date"
    t.string   "duration"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "badges", force: :cascade do |t|
    t.integer  "on_call_caregiver_id", null: false
    t.string   "type",                 null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "caregiver_relationships", force: :cascade do |t|
    t.string   "introduction_message", null: false
    t.integer  "primary_caregiver_id"
    t.integer  "on_call_caregiver_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "address",         null: false
    t.string   "password_digest"
    t.integer  "zipcode",         null: false
    t.integer  "loginable_id"
    t.string   "loginable_type"
    t.integer  "phone",           null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "logins", ["loginable_type", "loginable_id"], name: "index_logins_on_loginable_type_and_loginable_id", using: :btree

  create_table "meetings", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "on_call_caregivers", force: :cascade do |t|
    t.string   "education",   null: false
    t.string   "credentials"
    t.string   "about",       null: false
    t.string   "specialties"
    t.string   "experience"
    t.string   "hobbies"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "gender",     null: false
    t.string   "habits",     null: false
    t.string   "routine",    null: false
    t.string   "ailments",   null: false
    t.string   "medication", null: false
    t.string   "name",       null: false
    t.string   "background", null: false
    t.integer  "age",        null: false
    t.string   "hobbies",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primary_caregivers", force: :cascade do |t|
    t.string   "about_me",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reminders", force: :cascade do |t|
    t.string   "time",           null: false
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

end
