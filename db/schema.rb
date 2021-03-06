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

ActiveRecord::Schema.define(:version => 20120407150636) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rides", :force => true do |t|
    t.integer  "trip_id"
    t.integer  "passenger_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "rides", ["passenger_id"], :name => "index_rides_on_passenger_id"
  add_index "rides", ["trip_id"], :name => "index_rides_on_trip_id"

  create_table "trips", :force => true do |t|
    t.integer  "driver_id"
    t.integer  "start_location_id"
    t.integer  "finish_location_id"
    t.text     "description"
    t.float    "cost"
    t.datetime "departure"
    t.datetime "arrival"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "trips", ["driver_id"], :name => "index_trips_on_driver_id"
  add_index "trips", ["finish_location_id"], :name => "index_trips_on_finish_location_id"
  add_index "trips", ["start_location_id"], :name => "index_trips_on_start_location_id"

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
