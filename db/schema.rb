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

ActiveRecord::Schema.define(version: 20151021231301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "title",                     null: false
    t.string   "link"
    t.text     "short_desc"
    t.text     "full_desc"
    t.boolean  "display",    default: true, null: false
    t.integer  "position"
    t.integer  "user_id",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "announcements", ["display"], name: "index_announcements_on_display", using: :btree
  add_index "announcements", ["position"], name: "index_announcements_on_position", using: :btree
  add_index "announcements", ["user_id"], name: "index_announcements_on_user_id", using: :btree

  create_table "downloads", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "position"
    t.boolean  "display",                default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",                               null: false
  end

  add_index "downloads", ["display"], name: "index_downloads_on_display", using: :btree
  add_index "downloads", ["user_id"], name: "index_downloads_on_user_id", using: :btree

  create_table "observances", force: :cascade do |t|
    t.date     "start_date"
    t.string   "name",        limit: 255,                null: false
    t.string   "link",        limit: 255,                null: false
    t.text     "description"
    t.integer  "photo_id"
    t.boolean  "display",                 default: true, null: false
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "observances", ["display"], name: "index_observances_on_display", using: :btree
  add_index "observances", ["photo_id"], name: "index_observances_on_photo_id", using: :btree
  add_index "observances", ["user_id"], name: "index_observances_on_user_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.integer  "position"
    t.boolean  "display",                        default: true, null: false
    t.integer  "imageable_id"
    t.string   "imageable_type",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "pictures", ["imageable_id", "imageable_type"], name: "index_pictures_on_imageable_id_and_imageable_type", using: :btree
  add_index "pictures", ["imageable_type"], name: "index_pictures_on_imageable_type", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,                                        null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.boolean  "is_admin",                           default: false,                        null: false
    t.string   "password_digest",        limit: 255,                                        null: false
    t.string   "session_token",          limit: 255,                                        null: false
    t.string   "password_reset_token",   limit: 255
    t.datetime "password_reset_sent_at"
    t.boolean  "is_active",                          default: false,                        null: false
    t.string   "activation_token",       limit: 255, default: "INACTIVE",                   null: false
    t.string   "uid",                    limit: 255
    t.string   "access_token",           limit: 255
    t.string   "provider",               limit: 255
    t.string   "oauth_token",            limit: 255
    t.datetime "oauth_expires_at"
    t.string   "fb_image_url",           limit: 255
    t.boolean  "display",                            default: true,                         null: false
    t.integer  "position"
    t.string   "title",                  limit: 255
    t.string   "string",                 limit: 255
    t.text     "bio"
    t.string   "phone",                  limit: 255
    t.string   "work_phone",             limit: 255
    t.string   "home_phone",             limit: 255
    t.string   "mobile_phone",           limit: 255
    t.string   "fax",                    limit: 255
    t.string   "timezone",               limit: 255, default: "Eastern Time (US & Canada)", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["display"], name: "index_users_on_display", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
