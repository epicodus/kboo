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

ActiveRecord::Schema.define(version: 20140117020722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: true do |t|
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "episode_audio", force: true do |t|
    t.integer "episode_id"
    t.integer "fid"
    t.string  "filename"
    t.string  "filepath"
    t.integer "archive"
    t.integer "starttime"
    t.integer "endtime"
    t.integer "created"
    t.integer "updated"
    t.integer "status"
  end

  create_table "episodes", force: true do |t|
    t.string   "title"
    t.string   "short_description"
    t.text     "long_description"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "program_id"
    t.string   "host"
    t.string   "audio_url"
  end

  create_table "hosts", force: true do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "on_air_next", force: true do |t|
    t.string   "program_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "on_air_nows", force: true do |t|
    t.string   "program_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "program_highlights", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "highlights"
  end

  create_table "program_schedules", force: true do |t|
    t.text     "programs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "time"
  end

  create_table "programs", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.text     "description"
    t.time     "time"
    t.date     "date"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "program_title"
    t.string   "url"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
