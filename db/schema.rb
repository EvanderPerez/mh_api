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

ActiveRecord::Schema.define(version: 2023_05_16_164518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "second_name"
    t.string "last_name", null: false
    t.string "second_last_name"
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_locations_on_name"
  end

  create_table "service_orders", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_service_orders_on_client_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "model", null: false
    t.string "tool_type"
    t.string "brand", null: false
    t.string "accesories"
    t.string "location", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_order_id"
    t.index ["service_order_id"], name: "index_tools_on_service_order_id"
  end

  add_foreign_key "service_orders", "clients"
  add_foreign_key "tools", "service_orders"
end
