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

ActiveRecord::Schema.define(version: 2019_10_24_023625) do

  create_table "class_assignments", force: :cascade do |t|
    t.string "assignment_name"
    t.date "due_date"
    t.float "points"
    t.integer "school_classes_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_classes_id"], name: "index_class_assignments_on_school_classes_id"
  end

  create_table "offices", force: :cascade do |t|
    t.integer "office_number"
    t.string "building"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "school_classes", force: :cascade do |t|
    t.string "name"
    t.integer "class_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "class_assignments", "school_classes", column: "school_classes_id"
end
