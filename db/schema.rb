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

ActiveRecord::Schema.define(version: 20160411224118) do

  create_table "dwellings", force: :cascade do |t|
  end

  create_table "homes", primary_key: "hogar_id", force: :cascade do |t|
    t.integer  "vivienda_id"
    t.integer  "nhog"
    t.integer  "h05"
    t.integer  "h06"
    t.integer  "h07"
    t.integer  "h08"
    t.integer  "h09"
    t.integer  "h10"
    t.integer  "h11"
    t.integer  "h12"
    t.integer  "h13"
    t.integer  "h14"
    t.integer  "h15"
    t.integer  "h16"
    t.integer  "h19a"
    t.integer  "h19b"
    t.integer  "h19c"
    t.integer  "h19d"
    t.integer  "prop"
    t.integer  "indhac"
    t.integer  "totpers"
    t.integer  "algunbi"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", primary_key: "person_id", force: :cascade do |t|
    t.integer  "home_id"
    t.integer  "p01"
    t.integer  "p02"
    t.integer  "p03"
    t.integer  "p04"
    t.integer  "p05"
    t.integer  "p06"
    t.integer  "p07"
    t.integer  "p12"
    t.integer  "edadgru"
    t.integer  "edadqui"
    t.integer  "p08"
    t.integer  "p09"
    t.integer  "p10"
    t.integer  "condact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "twellings", primary_key: "vivienda_id", force: :cascade do |t|
    t.integer "radio_id"
    t.integer "tipvv"
    t.integer "v01"
    t.integer "v02"
    t.integer "v00"
    t.integer "urp"
    t.integer "incalserv"
    t.integer "inmat"
    t.integer "muni"
    t.integer "local"
    t.integer "incalcons"
    t.integer "tothog"
  end

end
