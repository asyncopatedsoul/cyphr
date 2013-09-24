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

ActiveRecord::Schema.define(version: 20130924210445) do

  create_table "game_configurations", force: true do |t|
    t.integer  "game_id"
    t.integer  "match_id"
    t.integer  "author_id"
    t.string   "metadata"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "rules"
    t.integer  "parent_id"
    t.integer  "creator_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "parent_id"
    t.text     "description"
    t.integer  "member_count"
    t.integer  "location_id"
    t.integer  "privacy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "nickname"
    t.integer  "latitude"
    t.integer  "longitude"
    t.integer  "radius"
    t.text     "address"
    t.integer  "parent_id"
    t.integer  "type_id"
    t.string   "kml_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.integer  "game_id"
    t.datetime "date_started"
    t.datetime "date_finished"
    t.integer  "status_id"
    t.time     "running_time"
    t.integer  "turn_count"
    t.integer  "location_id"
    t.integer  "zone_id"
    t.integer  "final_player_id"
    t.string   "player_id_list"
    t.string   "score_list"
    t.boolean  "is_valid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "author_id"
    t.integer  "type_id"
    t.text     "text"
    t.integer  "turn_id"
    t.integer  "player_id"
    t.integer  "match_id"
    t.integer  "game_id"
    t.integer  "privacy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.string   "email"
    t.string   "password"
    t.integer  "location_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "avatar_url"
    t.integer  "facebook_uid"
    t.string   "facebook_token"
    t.text     "short_bio"
    t.integer  "gender"
    t.date     "birthday"
    t.string   "skype_name"
    t.string   "twitter_token"
    t.string   "twitter_token_secret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rankings", force: true do |t|
    t.integer  "player_id"
    t.integer  "group_id"
    t.integer  "game_id"
    t.string   "game_metadata"
    t.integer  "elo_score"
    t.integer  "match_count"
    t.decimal  "win_ratio"
    t.integer  "win_count"
    t.integer  "loss_count"
    t.string   "match_id_list"
    t.string   "scope_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turns", force: true do |t|
    t.integer  "game_id"
    t.integer  "match_id"
    t.integer  "player_id"
    t.integer  "group_id"
    t.time     "running_time"
    t.datetime "date_finished"
    t.integer  "score"
    t.integer  "delta"
    t.string   "metadata"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
