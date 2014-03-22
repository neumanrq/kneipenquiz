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

ActiveRecord::Schema.define(version: 20140322191214) do

  create_table "admins", force: true do |t|
    t.string "email"
  end

  create_table "games", force: true do |t|
    t.string   "title"
    t.datetime "expected_date"
  end

  create_table "players", force: true do |t|
    t.string "name"
    t.string "email"
  end

  create_table "questions", force: true do |t|
    t.string  "content"
    t.string  "answer"
    t.string  "title"
    t.integer "game_id"
    t.string  "round"
  end

  create_table "results", force: true do |t|
    t.integer "round_one"
    t.integer "round_two"
    t.integer "round_three"
    t.integer "round_four"
    t.integer "total_score"
    t.integer "team_id"
    t.integer "game_id"
  end

  create_table "teams", force: true do |t|
    t.string  "title"
    t.integer "total_score"
  end

end
