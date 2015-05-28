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

ActiveRecord::Schema.define(version: 20150528023336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_pieces", force: true do |t|
    t.string   "discipline"
    t.string   "title"
    t.date     "date_of"
    t.string   "dimensions"
    t.string   "technique"
    t.string   "description"
    t.integer  "quantity"
    t.text     "observations"
    t.text     "exhibit_text"
    t.text     "artist_statement"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_id"
  end

  create_table "user_subscriptions", force: true do |t|
    t.date     "birth_date"
    t.string   "nationality"
    t.text     "address"
    t.string   "phone"
    t.string   "institution"
    t.text     "about"
    t.string   "status"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_subscriptions", ["user_id"], name: "index_user_subscriptions_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "read_agreement"
    t.string   "application_status"
    t.string   "attachment_file_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
