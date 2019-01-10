# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20190103013925) do

  create_table "electives", force: :cascade do |t|
    t.string   "course_name"
    t.string   "course_proposer_name"
    t.string   "course_instructor_name"
    t.integer  "credits"
    t.string   "semester"
    t.text     "course_description"
    t.text     "course_content"
    t.text     "text_and_references"
    t.text     "syllabus"
    t.text     "notes_t"
    t.string   "notes"
    t.text     "assignments_t"
    t.string   "assignments"
    t.text     "projects_t"
    t.string   "projects"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "comments"
    t.integer  "elective_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.integer  "admin",           default: 0
    t.string   "password_digest"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
