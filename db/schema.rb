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

ActiveRecord::Schema.define(version: 2022_01_01_173151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "title", null: false
    t.string "slug", null: false
    t.text "description"
    t.string "subject"
    t.boolean "publish", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.string "title", null: false
    t.string "description"
    t.boolean "publish", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_lessons_on_course_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.string "qstn", null: false
    t.string "optn_one", null: false
    t.string "optn_two", null: false
    t.string "optn_three", null: false
    t.string "optn_four", null: false
    t.integer "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_questions_on_lesson_id"
  end

  add_foreign_key "lessons", "courses"
  add_foreign_key "questions", "lessons"
end
