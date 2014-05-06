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

ActiveRecord::Schema.define(:version => 20140506053118) do

  create_table "actions", :force => true do |t|
    t.string   "name"
    t.string   "descr"
    t.string   "ruby_class"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "characters", :force => true do |t|
    t.integer  "user_id"
    t.integer  "map_id"
    t.string   "name"
    t.integer  "stamina"
    t.integer  "luck"
    t.integer  "watchful"
    t.integer  "free_points"
    t.integer  "mood"
    t.integer  "tire"
    t.integer  "health"
    t.integer  "comfort"
    t.integer  "thirst"
    t.integer  "hungry"
    t.integer  "head_item_id"
    t.integer  "body_item_id"
    t.integer  "hands_item_id"
    t.integer  "wrist_item_id"
    t.integer  "legs_item_id"
    t.integer  "boots_item_id"
    t.integer  "backpack_item_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "climes", :force => true do |t|
    t.string   "name"
    t.integer  "t_min"
    t.integer  "t_max"
    t.integer  "winter"
    t.integer  "rain"
    t.integer  "snow"
    t.integer  "sun"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "examples", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facilities", :force => true do |t|
    t.integer  "location_id"
    t.string   "name"
    t.text     "descr"
    t.string   "kind"
    t.integer  "visibility"
    t.integer  "own_inventory_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "facilities_actions", :force => true do |t|
    t.integer "facility_id"
    t.integer "action_id"
  end

  create_table "inventories", :force => true do |t|
    t.integer  "slots"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "item_templates", :force => true do |t|
    t.string   "name"
    t.text     "descr"
    t.string   "kind"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "item_templates_actions", :force => true do |t|
    t.integer "item_template_id"
    t.integer "action_id"
  end

  create_table "items", :force => true do |t|
    t.integer  "item_template_id"
    t.integer  "inventory_id"
    t.integer  "own_inventory_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "map_id"
    t.string   "name"
    t.text     "descr"
    t.integer  "cx"
    t.integer  "cy"
    t.integer  "own_inventory_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "locations_actions", :force => true do |t|
    t.integer "location_id"
    t.integer "action_id"
  end

  create_table "maps", :force => true do |t|
    t.integer  "clime_id"
    t.string   "name"
    t.datetime "spawn_time"
    t.integer  "temperature"
    t.boolean  "winter"
    t.boolean  "snow"
    t.boolean  "rain"
    t.boolean  "sun"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
