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

ActiveRecord::Schema[7.0].define(version: 2023_10_16_071011) do
  create_table "device_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "device_manufacturers", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.string "manufacturer"
    t.string "category"
    t.string "assigned_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "device_manufacturer_id"
    t.integer "device_category_id"
    t.integer "employee_id"
    t.index ["device_category_id"], name: "index_devices_on_device_category_id"
    t.index ["device_manufacturer_id"], name: "index_devices_on_device_manufacturer_id"
    t.index ["employee_id"], name: "index_devices_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "assigned_devices"
    t.string "assigned_software"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

  create_table "employees_softwares", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "software_id", null: false
  end

  create_table "softwares", force: :cascade do |t|
    t.string "name"
    t.integer "license_count"
    t.string "assigned_employees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "devices", "device_categories"
  add_foreign_key "devices", "device_manufacturers"
  add_foreign_key "devices", "employees"
end
