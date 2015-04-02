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

ActiveRecord::Schema.define(version: 20150321224659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "difficulties", force: :cascade do |t|
    t.string   "rating"
    t.integer  "rating_value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "difficulty_tables", force: :cascade do |t|
    t.integer "easy"
    t.integer "medium"
    t.integer "hard"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "player1_id"
    t.integer  "player2_id"
    t.boolean  "player1_turn",            default: true,  null: false
    t.boolean  "game_over",               default: true,  null: false
    t.boolean  "art_trophy_p1",           default: false, null: false
    t.boolean  "entertainment_trophy_p1", default: false, null: false
    t.boolean  "history_trophy_p1",       default: false, null: false
    t.boolean  "geography_trophy_p1",     default: false, null: false
    t.boolean  "science_trophy_p1",       default: false, null: false
    t.boolean  "sports_trophy_p1",        default: false, null: false
    t.boolean  "art_trophy_p2",           default: false, null: false
    t.boolean  "entertainment_trophy_p2", default: false, null: false
    t.boolean  "history_trophy_p2",       default: false, null: false
    t.boolean  "geography_trophy_p2",     default: false, null: false
    t.boolean  "science_trophy_p2",       default: false, null: false
    t.boolean  "sports_trophy_p2",        default: false, null: false
    t.integer  "player1_turn_count",      default: 0
    t.integer  "player2_turn_count",      default: 0
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.string   "subject"
    t.text     "body"
    t.integer  "read"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sender_name"
    t.string   "recipient_name"
    t.string   "payload"
  end

  create_table "player_stats", force: :cascade do |t|
    t.integer "userId"
    t.integer "art_correct_count"
    t.integer "art_total_count"
    t.integer "entertainment_correct_count"
    t.integer "entertainment_total_count"
    t.integer "geography_correct_count"
    t.integer "geography_total_count"
    t.integer "history_correct_count"
    t.integer "history_total_count"
    t.integer "science_correct_count"
    t.integer "science_total_count"
    t.integer "sports_correct_count"
    t.integer "sports_total_count"
    t.integer "score",                       default: 0
    t.integer "next_lvl_score",              default: 100
    t.integer "level",                       default: 1
    t.integer "total_games",                 default: 0
    t.integer "total_wins",                  default: 0
  end

  create_table "questions", force: :cascade do |t|
    t.text     "title"
    t.text     "rightAns"
    t.text     "wrongAns1"
    t.text     "wrongAns2"
    t.text     "wrongAns3"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "subject_title"
    t.boolean  "approved",      default: false, null: false
    t.integer  "difficulty"
    t.integer  "user_id"
  end

  add_index "questions", ["user_id"], name: "index_questions_on_user_id", using: :btree

  create_table "reviewers", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "reviewer"
  end

  add_index "reviewers", ["email"], name: "index_reviewers_on_email", unique: true, using: :btree
  add_index "reviewers", ["reset_password_token"], name: "index_reviewers_on_reset_password_token", unique: true, using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string "subject_title"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.boolean  "reviewer"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.boolean  "request_reviewer",       default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",      null: false
    t.integer  "item_id",        null: false
    t.string   "event",          null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.text     "object_changes"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
