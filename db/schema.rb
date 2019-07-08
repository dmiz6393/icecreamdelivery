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

ActiveRecord::Schema.define(version: 2019_07_08_160749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.integer "number"
    t.string "city"
    t.string "post_code"
    t.bigint "user_id"
    t.bigint "ice_cream_shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ice_cream_shop_id"], name: "index_addresses_on_ice_cream_shop_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "ice_cream_shops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "ice_cream_flavor"
    t.float "price"
    t.bigint "ice_cream_shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ice_cream_shop_id"], name: "index_items_on_ice_cream_shop_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_order_items_on_item_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ice_cream_shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ice_cream_shop_id"], name: "index_orders_on_ice_cream_shop_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "ice_cream_shops"
  add_foreign_key "addresses", "users"
  add_foreign_key "items", "ice_cream_shops"
  add_foreign_key "order_items", "items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "ice_cream_shops"
  add_foreign_key "orders", "users"
end
