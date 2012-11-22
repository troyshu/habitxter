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

ActiveRecord::Schema.define(:version => 20121122193036) do

  create_table "actions", :force => true do |t|
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "habit_id"
  end

  add_index "actions", ["habit_id", "created_at"], :name => "index_actions_on_habit_id_and_created_at"

  create_table "habits", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
    t.time     "reminder_time"
    t.boolean  "enabled"
  end

  add_index "habits", ["enabled"], :name => "index_habits_on_enabled"
  add_index "habits", ["user_id", "created_at"], :name => "index_habits_on_user_id_and_created_at"

  create_table "reminders", :force => true do |t|
    t.time     "reminder_time"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
  end

  add_index "reminders", ["user_id", "reminder_time"], :name => "index_reminders_on_user_id_and_reminder_time"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "perishable_token"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "phone_number"
  end

end
