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

ActiveRecord::Schema.define(version: 20171026165905) do

  create_table "jedzenies", force: :cascade do |t|
    t.integer "regen_hp"
    t.integer "regen_mp"
    t.integer "bonus_exp"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_jedzenies_on_user_id"
  end

  create_table "potions", force: :cascade do |t|
    t.integer "bonus_hp"
    t.integer "bonus_mp"
    t.integer "bonus_atk"
    t.integer "bonus_exp"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_potions_on_user_id"
  end

  create_table "smoks", force: :cascade do |t|
    t.integer "hp"
    t.integer "mp"
    t.integer "atk"
    t.integer "lvl"
    t.integer "exp"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_smoks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end