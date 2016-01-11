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

ActiveRecord::Schema.define(version: 20160110204827) do

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
    t.integer  "duration"
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

  create_table "on_call_caregivers", force: :cascade do |t|
    t.string   "education"
    t.string   "credentials"
    t.string   "about"
    t.string   "specialities"
    t.string   "experience"
    t.string   "hobbies"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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
