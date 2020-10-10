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

ActiveRecord::Schema.define(version: 2020_10_08_183529) do

  create_table "departments", force: :cascade do |t|
    t.string "dep_name"
    t.integer "head"
  end

  create_table "designations", force: :cascade do |t|
    t.string "deg_name"
    t.boolean "deg_status", default: true
    t.integer "department_id"
  end

  create_table "employee_skills", force: :cascade do |t|
    t.integer "skills_point"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "cid_no"
    t.string "contact_no"
    t.string "email_address"
    t.integer "age"
    t.date "date_of_joining"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "department_id", null: false
    t.integer "designation_id", null: false
    t.integer "rank_id", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["designation_id"], name: "index_employees_on_designation_id"
    t.index ["rank_id"], name: "index_employees_on_rank_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.date "promotion_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.string "q_name"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string "rank_title"
    t.integer "level"
    t.decimal "salary"
    t.boolean "is_active"
    t.string "requirement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "qualification_id", null: false
    t.index ["qualification_id"], name: "index_ranks_on_qualification_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill_name"
    t.string "skill_description"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staff_types", force: :cascade do |t|
    t.string "staff_type"
  end

  create_table "user_logs", force: :cascade do |t|
    t.date "log_date"
    t.string "user_log"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_user_logs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status_type"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "designations"
  add_foreign_key "employees", "ranks"
  add_foreign_key "ranks", "qualifications"
  add_foreign_key "user_logs", "users"
end
