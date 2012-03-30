# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120327191330) do

  create_table "ads", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "prive",       :limit => 10, :precision => 10, :scale => 0
    t.integer  "seller_id"
    t.string   "email"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_workouts", :force => true do |t|
    t.string   "client_name"
    t.string   "trainer"
    t.integer  "duration_mins"
    t.date     "date_of_workout"
    t.integer  "paid_amount",     :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flights", :force => true do |t|
    t.datetime "departure"
    t.datetime "arrival"
    t.string   "destination"
    t.integer  "baggage_allowance", :limit => 10, :precision => 10, :scale => 0
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seats", :force => true do |t|
    t.integer  "flight_id"
    t.string   "name"
    t.integer  "baggage",    :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", :force => true do |t|
    t.string   "name"
    t.string   "seat_id_seq"
    t.text     "address"
    t.integer  "price_paid",    :limit => 10, :precision => 10, :scale => 0
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
  end

end
