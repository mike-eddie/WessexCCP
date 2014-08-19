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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140118181023) do

  create_table "admins", :force => true do |t|
    t.integer  "user_id"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "btn"
    t.string   "btntext"
    t.string   "btnlink"
    t.date     "date"
    t.string   "colour"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "pin"
  end

  create_table "attendances", :force => true do |t|
    t.string   "student_id"
    t.integer  "teaching_session_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.boolean  "fb_complete"
    t.string   "completed_survey_id"
  end

  create_table "clinicians", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "profession"
    t.string   "grade"
    t.string   "employer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "completed_outcomes", :force => true do |t|
    t.integer  "teaching_session_id"
    t.integer  "outcome_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "completed_surveys", :force => true do |t|
    t.integer  "survey_id"
    t.string   "student_num"
    t.boolean  "complete"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "faculties", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "outcomes", :force => true do |t|
    t.text     "outcome"
    t.integer  "topic_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "survey_id"
    t.string   "text"
    t.boolean  "required"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "qtype"
    t.integer  "qorder"
  end

  create_table "responses", :force => true do |t|
    t.string   "student_num"
    t.integer  "question_id"
    t.text     "text"
    t.string   "string"
    t.boolean  "boolean"
    t.integer  "integer"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "completed_survey_id"
  end

  create_table "students", :id => false, :force => true do |t|
    t.string   "student_num"
    t.string   "fname"
    t.string   "lname"
    t.string   "university"
    t.string   "course"
    t.integer  "year"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "surveys", :force => true do |t|
    t.integer  "teaching_session_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "teaching_formats", :force => true do |t|
    t.string   "format"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "colour"
  end

  create_table "teaching_sessions", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "format"
    t.integer  "teaching_format_id"
    t.integer  "survey_id"
    t.boolean  "fb_not_required"
  end

  create_table "themes", :force => true do |t|
    t.string   "title"
    t.integer  "unit_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics", :force => true do |t|
    t.string   "title"
    t.integer  "theme_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
    t.boolean  "complete"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "admin_password"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
