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

ActiveRecord::Schema.define(version: 20180109200056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "clubs", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.integer  "players_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "games", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "home_club_id"
    t.uuid     "away_club_id"
    t.uuid     "league_id"
    t.uuid     "stadium_id"
    t.integer  "home_goals"
    t.integer  "away_goals"
    t.string   "status"
    t.date     "date"
    t.time     "time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "games", ["away_club_id"], name: "index_games_on_away_club_id", using: :btree
  add_index "games", ["home_club_id"], name: "index_games_on_home_club_id", using: :btree
  add_index "games", ["league_id"], name: "index_games_on_league_id", using: :btree
  add_index "games", ["stadium_id"], name: "index_games_on_stadium_id", using: :btree

  create_table "goal_stats", force: :cascade do |t|
    t.integer  "goals",        default: 0
    t.uuid     "player_id"
    t.uuid     "game_id"
    t.uuid     "league_id"
    t.uuid     "away_club_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "goal_stats", ["away_club_id"], name: "index_goal_stats_on_away_club_id", using: :btree
  add_index "goal_stats", ["game_id"], name: "index_goal_stats_on_game_id", using: :btree
  add_index "goal_stats", ["league_id"], name: "index_goal_stats_on_league_id", using: :btree
  add_index "goal_stats", ["player_id"], name: "index_goal_stats_on_player_id", using: :btree

  create_table "leagues", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.integer  "clubs_count"
    t.date     "start_date",  null: false
    t.date     "end_date",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.uuid     "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "players", ["club_id"], name: "index_players_on_club_id", using: :btree

  create_table "stadia", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.uuid     "club_id"
    t.string   "location"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stadia", ["club_id"], name: "index_stadia_on_club_id", using: :btree

  add_foreign_key "games", "clubs", column: "away_club_id"
  add_foreign_key "games", "clubs", column: "home_club_id"
  add_foreign_key "games", "leagues"
  add_foreign_key "games", "stadia"
  add_foreign_key "goal_stats", "clubs", column: "away_club_id"
  add_foreign_key "goal_stats", "games"
  add_foreign_key "goal_stats", "leagues"
  add_foreign_key "goal_stats", "players"
  add_foreign_key "players", "clubs"
  add_foreign_key "stadia", "clubs"
end
