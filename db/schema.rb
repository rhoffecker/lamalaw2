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

ActiveRecord::Schema.define(version: 20161005200943) do

  create_table "documents", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "doc_type"
    t.date     "create_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "documents", ["user_id"], name: "index_documents_on_user_id"

  create_table "opp_parties", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "string"
    t.date     "birth_date"
    t.date     "date"
    t.string   "gender"
    t.string   "height"
    t.string   "weight"
    t.string   "dl_number"
    t.string   "dl_state"
    t.string   "ssn"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "cell_phone"
    t.string   "add_line1"
    t.string   "add_line2"
    t.string   "add_city"
    t.string   "add_state"
    t.string   "add_zip"
    t.date     "az_since"
    t.string   "email_listed"
    t.string   "employer"
    t.string   "job_title"
    t.string   "emp_add_line1"
    t.string   "emp_add_line2"
    t.string   "emp_add_city"
    t.string   "emp_add_state"
    t.string   "emp_add_zip"
    t.string   "emp_phone"
    t.string   "emp_fax"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "opp_parties", ["user_id"], name: "index_opp_parties_on_user_id"

  create_table "profiles", force: :cascade do |t|
    t.string "user_id"
    t.string "first_name"
    t.string "last_name"
    t.date   "birth_date"
    t.string "ssn"
    t.string "home_phone"
    t.string "work_phone"
    t.string "cell_phone"
    t.string "case_number"
    t.string "gender"
    t.string "height"
    t.string "weight"
    t.string "dl_number"
    t.string "dl_state"
    t.string "add_line1"
    t.string "add_line2"
    t.string "add_city"
    t.string "add_state"
    t.string "add_zip"
    t.date   "az_since"
    t.string "email_listed"
    t.string "employer"
    t.string "job_title"
    t.string "emp_add_line1"
    t.string "emp_add_line2"
    t.string "emp_add_city"
    t.string "emp_add_state"
    t.string "emp_add_zip"
    t.string "emp_phone"
    t.string "emp_fax"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
