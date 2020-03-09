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

ActiveRecord::Schema.define(version: 20200309145529) do

  create_table "relationships", force: :cascade do |t|
    t.integer "tester_id"
    t.integer "tested_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tested_id"], name: "index_relationships_on_tested_id"
    t.index ["tester_id", "tested_id"], name: "index_relationships_on_tester_id_and_tested_id", unique: true
    t.index ["tester_id"], name: "index_relationships_on_tester_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "subject"
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tested_id"
    t.datetime "tested_at"
    t.index ["user_id", "created_at"], name: "index_tests_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_tests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
