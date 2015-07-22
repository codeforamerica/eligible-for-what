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

ActiveRecord::Schema.define(version: 20150722075949) do

  create_table "properties", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "address_city"
    t.boolean  "veteran"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "address_street"
    t.string   "address_apt"
    t.string   "address_state"
    t.integer  "address_zip"
    t.string   "gender"
    t.boolean  "transgender"
    t.string   "race"
    t.string   "age"
    t.boolean  "abuse_verbal_emotional_past_year"
    t.boolean  "abuse_physical_past_year"
    t.boolean  "abuse_physical_past_month"
    t.string   "domestic_violence"
    t.string   "mental_health"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.string   "organization"
    t.boolean  "veteran"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "services_properties", id: false, force: :cascade do |t|
    t.integer "service_id"
    t.integer "property_id"
  end

  add_index "services_properties", ["service_id", "property_id"], name: "index_services_properties_on_service_id_and_property_id"

  create_table "services_tags", id: false, force: :cascade do |t|
    t.integer "service_id"
    t.integer "tag_id"
  end

  add_index "services_tags", ["service_id", "tag_id"], name: "index_services_tags_on_service_id_and_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "area"
    t.string   "category"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
