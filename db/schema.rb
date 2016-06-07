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

ActiveRecord::Schema.define(version: 20160607192904) do

  create_table "participants", force: :cascade do |t|
    t.integer  "trip_id",    limit: 4,   null: false
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "participants", ["trip_id"], name: "fk_rails_ea417e312c", using: :btree
  add_index "participants", ["user_id"], name: "fk_rails_b9a3c50f15", using: :btree

  create_table "trips", force: :cascade do |t|
    t.string   "city_from",  limit: 255, null: false
    t.string   "city_to",    limit: 255, null: false
    t.datetime "travel_at",              null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree

  add_foreign_key "participants", "trips"
  add_foreign_key "participants", "users"
end
