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

ActiveRecord::Schema.define(version: 20140923131205) do

  create_table "productions", force: true do |t|
    t.string   "name",           limit: 60,  default: "UNKNOWN", null: false
    t.string   "pcode",          limit: 30,  default: "PD8888"
    t.string   "pspec",          limit: 50,  default: "1.6X9"
    t.string   "punit",          limit: 10
    t.string   "psize",          limit: 50
    t.string   "pimageurl"
    t.integer  "pweight"
    t.integer  "pvisittime"
    t.text     "pdes",           limit: 200
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "amount"
    t.integer  "at_lest_amount"
  end

end
