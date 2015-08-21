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

ActiveRecord::Schema.define(version: 20150820021344) do

  create_table "contests", force: :cascade do |t|
    t.string   "league"
    t.string   "name"
    t.datetime "starttime"
    t.integer  "size"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gameset_id"
  end

  create_table "entries", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "contest_id"
    t.integer  "game_id"
    t.string   "selected_winner"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "selected_winner_id"
  end

  create_table "game_gameset_relationships", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "gameset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: :cascade do |t|
    t.string   "league"
    t.datetime "starttime"
    t.string   "name"
    t.integer  "gameset_id"
    t.string   "status"
    t.integer  "home_team_score"
    t.integer  "away_team_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "winning_team_id"
    t.integer  "losing_team_id"
  end

  create_table "gamesets", force: :cascade do |t|
    t.string   "league"
    t.datetime "starttime"
    t.integer  "game_id"
    t.integer  "number_of_games"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "league"
    t.string   "city_name"
    t.string   "team_name"
    t.string   "full_team_name"
    t.string   "team_abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
