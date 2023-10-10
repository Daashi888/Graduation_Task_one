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

ActiveRecord::Schema.define(version: 2023_10_10_021527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.text "image"
    t.string "title"
    t.text "content"
    t.integer "select_animal"
    t.string "age"
    t.integer "sex"
    t.boolean "negotiating"
    t.string "current_location"
    t.string "prefecture"
    t.string "dog_breed"
    t.string "cat_species"
    t.boolean "castrated"
    t.boolean "vaccinated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "nickname", null: false
    t.integer "postal_code", null: false
    t.integer "prefecture", null: false
    t.string "city", null: false
    t.string "ward_town", null: false
    t.string "other_address"
    t.integer "sex", null: false
    t.string "occupation", null: false
    t.integer "role", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
