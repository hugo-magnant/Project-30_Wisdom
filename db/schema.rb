# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_25_124224) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "flat_name", null: false
    t.text "introduction", null: false
    t.text "flag", null: false
    t.text "population", null: false
    t.text "geo", null: false
    t.text "joyaux", null: false
    t.text "apercu", null: false
  end

  create_table "country_orders", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.integer "order", null: false
    t.boolean "current", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_country_orders_on_country_id"
    t.index ["current"], name: "index_country_orders_on_current"
    t.index ["order"], name: "index_country_orders_on_order", unique: true
  end

  add_foreign_key "country_orders", "countries"
end
