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

ActiveRecord::Schema.define(version: 20130725221000) do

  create_table "matches", force: true do |t|
    t.datetime "start"
    t.time     "duration"
    t.integer  "home_score"
    t.integer  "visitor_score"
    t.integer  "season_id"
    t.integer  "home_team_id"
    t.integer  "visiting_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["home_team_id"], name: "index_matches_on_home_team_id"
  add_index "matches", ["season_id"], name: "index_matches_on_season_id"
  add_index "matches", ["visiting_team_id"], name: "index_matches_on_visiting_team_id"

  create_table "seasons", force: true do |t|
    t.string   "name"
    t.date     "start"
    t.date     "finish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons_teams", id: false, force: true do |t|
    t.integer "season_id", null: false
    t.integer "team_id",   null: false
  end

  add_index "seasons_teams", ["team_id", "season_id"], name: "index_seasons_teams_on_team_id_and_season_id", unique: true

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
