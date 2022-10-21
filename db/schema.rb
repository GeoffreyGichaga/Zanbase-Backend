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

ActiveRecord::Schema.define(version: 2022_10_21_020455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.string "date"
    t.string "timeIn"
    t.string "timeOut"
    t.string "activities"
    t.string "sign"
    t.string "checkedBy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "organisation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payment_approval_forms", force: :cascade do |t|
    t.string "prep_date"
    t.string "org"
    t.string "program"
    t.string "function"
    t.string "name"
    t.string "employee_id"
    t.string "start_day_of_the_week"
    t.string "end_date_of_the_week"
    t.string "number_of_days_worked"
    t.string "amount_payable"
    t.string "name_on_account"
    t.string "bank"
    t.string "account"
    t.string "bank_code"
    t.string "branch_code"
    t.string "telephone"
    t.string "prepared_by_name"
    t.string "user_signature_sign"
    t.string "prepared_by_date"
    t.string "approved_by_name"
    t.string "approved_by_signature"
    t.string "approved_by_date"
    t.string "authorized_by_name"
    t.string "authorized_by_sign"
    t.string "authorized_by_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payment_request_forms", force: :cascade do |t|
    t.string "generated_by"
    t.string "budget_holder"
    t.string "payee"
    t.string "paid_by"
    t.string "telephone"
    t.string "account"
    t.string "bank"
    t.string "description"
    t.string "cost"
    t.string "budget_code"
    t.string "checked_by"
    t.string "checked_by_date"
    t.string "approved_by_budget_holder_1"
    t.string "approved_by_budget_holder_1_date"
    t.string "approved_by_budget_holder_2"
    t.string "approved_by_budget_holder_2_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pvs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "targets", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "supervisor_id"
    t.integer "user_id"
    t.string "task_title"
    t.string "task_description"
    t.string "task_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tutorials", force: :cascade do |t|
    t.string "image_url"
    t.string "title"
    t.string "description"
    t.string "video_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_details", force: :cascade do |t|
    t.string "name_on_account"
    t.string "bank_name"
    t.string "account_number"
    t.string "bank_code"
    t.string "branch_code"
    t.string "telephone_number"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "id_number"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "username"
    t.string "role"
    t.string "supervisor"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_details_id"
    t.integer "attendance_id"
    t.string "org"
    t.string "function"
    t.integer "pv_id"
    t.integer "department_id"
  end

end
