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

ActiveRecord::Schema.define(version: 20191225101049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creators", force: :cascade do |t|
    t.string   "name"
    t.datetime "registration_date"
    t.string   "city"
    t.string   "specialization"
    t.string   "phone_number"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.float    "price"
    t.integer  "myorder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["myorder_id"], name: "index_deliveries_on_myorder_id", using: :btree
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.string   "title"
    t.string   "country_of_origin"
    t.date     "production_date"
    t.integer  "storage_time"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "production_date"
    t.integer  "storage_time"
    t.integer  "creator_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["creator_id"], name: "index_items_on_creator_id", using: :btree
  end

  create_table "myclients", force: :cascade do |t|
    t.string   "name"
    t.datetime "birth"
    t.string   "company"
    t.string   "phone_number"
    t.string   "city"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "myorders", force: :cascade do |t|
    t.float    "order_sum"
    t.datetime "order_date"
    t.integer  "amount"
    t.integer  "myclient_id"
    t.integer  "item_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["item_id"], name: "index_myorders_on_item_id", using: :btree
    t.index ["myclient_id"], name: "index_myorders_on_myclient_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "title"
    t.text     "body"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
