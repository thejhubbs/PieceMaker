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

ActiveRecord::Schema.define(version: 20140407004048) do

  create_table "clientalk_layout_options", force: true do |t|
    t.string   "title"
    t.string   "favicon"
    t.string   "logo"
    t.string   "mobile_logo"
    t.string   "bg_image"
    t.integer  "account_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientalk_pages", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.text     "information"
    t.integer  "parent_id"
    t.integer  "display"
    t.string   "image"
    t.integer  "account_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissionary_accounts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.integer  "role_id",                default: 1
    t.datetime "remember_me_created"
    t.datetime "reset_password_sent_at"
    t.boolean  "email_confirmed",        default: false
    t.string   "email_token"
    t.datetime "first_try"
    t.integer  "times_tried",            default: 0
    t.integer  "sign_in_count",          default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissionary_authentications", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "password_digest"
    t.string   "oauth_token"
    t.integer  "account_id"
    t.datetime "oauth_expiration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissionary_roles", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "parent_id"
    t.boolean  "visit_option", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissionary_visits", force: true do |t|
    t.string   "ip"
    t.string   "from"
    t.integer  "role_id",    default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
