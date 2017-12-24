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

ActiveRecord::Schema.define(version: 20171223211833) do

  create_table "first_names", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "last_name"
    t.string "nickname"
    t.string "email"
    t.string "emergency_contact"
    t.string "emerg_phone"
    t.string "med_history"
    t.string "dependant"
    t.string "vehicle_licence"
    t.string "agrees_waiver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.string "email"
    t.string "emergency_contact"
    t.string "emerg_phone"
    t.string "med_history"
    t.string "dependant"
    t.string "vehicle_licence"
    t.string "agrees_waiver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
