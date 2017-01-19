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

ActiveRecord::Schema.define(version: 20170119002322) do

  create_table "klients", force: :cascade do |t|
    t.integer  "user_id",    limit: 25
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "towaries", force: :cascade do |t|
    t.integer  "zamowienie_id"
    t.string   "nazwa"
    t.integer  "cena"
    t.text     "opis"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "uzytkowniks", force: :cascade do |t|
    t.string   "imie",            limit: 20
    t.string   "nazwisko",        limit: 60
    t.string   "uzytkownik",      limit: 25
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "telefon",                     default: "", null: false
    t.string   "password_digest"
    t.string   "adres",           limit: 200,              null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "uzytkowniks", ["uzytkownik"], name: "index_uzytkowniks_on_uzytkownik"

  create_table "zamowienies", force: :cascade do |t|
    t.string   "klient_id"
    t.string   "status"
    t.integer  "wartosc"
    t.boolean  "wyslaneczynie", default: false
    t.text     "zawartosc"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "zamowienies", ["klient_id"], name: "index_zamowienies_on_klient_id"
  add_index "zamowienies", [nil], name: "index_zamowienies_on_zamowienie_id"

end
