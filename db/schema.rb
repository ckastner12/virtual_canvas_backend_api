# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_09_000838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animate_mos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "picture_id", null: false
    t.integer "loc_x"
    t.integer "loc_y"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["picture_id"], name: "index_animate_mos_on_picture_id"
    t.index ["user_id"], name: "index_animate_mos_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "animate_mos", "pictures"
  add_foreign_key "animate_mos", "users"
end
