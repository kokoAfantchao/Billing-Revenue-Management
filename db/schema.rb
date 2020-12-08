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

ActiveRecord::Schema.define(version: 2020_11_13_050205) do

  create_table "bills", primary_key: "bill_id", force: :cascade do |t|
    t.boolean "is_paid"
    t.float "total_price"
    t.datetime "date"
    t.bigint "insurance_id"
    t.string "cpt_codes"
    t.string "icd_codes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cpts", primary_key: "cpt_id", force: :cascade do |t|
    t.string "cpt_code"
    t.string "cpt_description"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "icds", force: :cascade do |t|
    t.string "category_code"
    t.string "diagnosis_code"
    t.string "full_code"
    t.string "abbreviated_description"
    t.string "full_description"
    t.string "category_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.string "member_name"
    t.string "group_number"
    t.string "insurance_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
