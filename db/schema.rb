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

ActiveRecord::Schema.define(version: 20180417173942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bulletins", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "team_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_bulletins_on_player_id"
    t.index ["team_id"], name: "index_bulletins_on_team_id"
  end

  create_table "games", force: :cascade do |t|
    t.bigint "home_id"
    t.bigint "away_id"
    t.boolean "home_confirm"
    t.boolean "away_confirm"
    t.text "details"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_id"], name: "index_games_on_away_id"
    t.index ["home_id"], name: "index_games_on_home_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "sender_id"
    t.bigint "recipient_id"
    t.string "subject"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "user_id"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bulletins", "players"
  add_foreign_key "bulletins", "teams"
  add_foreign_key "players", "teams"
  add_foreign_key "players", "users"
  add_foreign_key "teams", "users"
end
