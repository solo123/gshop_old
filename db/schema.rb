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

ActiveRecord::Schema.define(:version => 20130610174841) do

  create_table "godown_entries", :force => true do |t|
    t.date     "godown_date"
    t.integer  "manufactory_id"
    t.integer  "from_warehouse_id"
    t.integer  "to_warehouse_id"
    t.string   "info"
    t.integer  "total_quantity",    :default => 0
    t.integer  "operator"
    t.integer  "status",            :default => 0
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "godown_items", :force => true do |t|
    t.integer  "godown_entry_id"
    t.string   "product_data_type"
    t.integer  "product_data_id"
    t.integer  "quantity",          :default => 0
    t.integer  "status",            :default => 0
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "guitars", :force => true do |t|
    t.string   "brand"
    t.string   "guitar_type"
    t.string   "model"
    t.decimal  "price"
    t.string   "info"
    t.integer  "title_photo_id"
    t.integer  "status",         :default => 0
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "photo_data_type"
    t.integer  "photo_data_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
  end

  create_table "serial_products", :force => true do |t|
    t.string   "serial_number"
    t.string   "product_name"
    t.string   "product_model"
    t.integer  "title_photo_id"
    t.integer  "production_batch_id"
    t.string   "product_data_type"
    t.integer  "product_data_id"
    t.integer  "status",              :default => 0
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "stock_journals", :force => true do |t|
    t.integer  "stock_id"
    t.integer  "stock_before"
    t.integer  "stock_godown"
    t.integer  "stock_after"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "stocks", :force => true do |t|
    t.string   "product_data_type"
    t.integer  "product_data_id"
    t.integer  "on_hand",           :default => 0
    t.string   "info"
    t.integer  "title_photo_id"
    t.date     "last_buy_date"
    t.date     "sold_out_date"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "warehouse_id"
  end

  create_table "warehouses", :force => true do |t|
    t.string   "name"
    t.string   "pre_code"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
