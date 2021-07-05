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

ActiveRecord::Schema.define(version: 2021_07_05_065955) do

  create_table "book_marks", force: :cascade do |t|
    t.string "book_mark_name", null: false
    t.string "tag"
    t.string "book_mark_url", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contents", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "programming_language_id", null: false
    t.integer "task_id"
    t.integer "book_mark_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_mark_id"], name: "index_contents_on_book_mark_id"
    t.index ["programming_language_id"], name: "index_contents_on_programming_language_id"
    t.index ["task_id"], name: "index_contents_on_task_id"
    t.index ["user_id"], name: "index_contents_on_user_id"
  end

  create_table "programming_languages", force: :cascade do |t|
    t.string "programming_languages_name", null: false
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "progresses", force: :cascade do |t|
    t.date "study_date", null: false
    t.time "today"
    t.time "this_week"
    t.time "this_month"
    t.time "total_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_name", null: false
    t.boolean "active", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "image"
    t.text "profile_text"
    t.text "link"
    t.integer "content_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_id"], name: "index_users_on_content_id"
  end

  add_foreign_key "contents", "book_marks"
  add_foreign_key "contents", "programming_languages"
  add_foreign_key "contents", "tasks"
  add_foreign_key "contents", "users"
  add_foreign_key "users", "contents"
end
