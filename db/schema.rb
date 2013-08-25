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

ActiveRecord::Schema.define(version: 20130812041122) do

  create_table "accessories", force: true do |t|
    t.string   "short_code"
    t.string   "brand"
    t.string   "name"
    t.string   "catalog"
    t.string   "info"
    t.decimal  "price"
    t.integer  "title_photo_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "product_id"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "mobile"
    t.string   "phone"
    t.string   "email"
    t.string   "qq"
    t.string   "address"
    t.integer  "level",      default: 0
    t.string   "info"
    t.string   "reason"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "customers_manufactories", id: false, force: true do |t|
    t.integer "manufactory_id"
    t.integer "customer_id"
  end

  create_table "godown_entries", force: true do |t|
    t.date     "godown_date"
    t.integer  "manufactory_id"
    t.integer  "from_warehouse_id"
    t.integer  "to_warehouse_id"
    t.string   "info"
    t.integer  "total_quantity",    default: 0
    t.integer  "operator"
    t.integer  "status",            default: 0
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "godown_items", force: true do |t|
    t.integer  "godown_entry_id"
    t.string   "product_data_type"
    t.integer  "product_data_id"
    t.integer  "quantity",                                  default: 0
    t.integer  "status",                                    default: 0
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.decimal  "cost",              precision: 8, scale: 2, default: 0.0
    t.integer  "product_id"
  end

  create_table "guitars", force: true do |t|
    t.string   "brand"
    t.string   "guitar_type"
    t.string   "model"
    t.decimal  "price"
    t.string   "info"
    t.integer  "title_photo_id"
    t.integer  "status",         default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "short_code"
    t.integer  "product_id"
  end

  create_table "manufactories", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "website"
    t.string   "phone"
    t.string   "email"
    t.string   "bank_account"
    t.string   "contact"
    t.decimal  "rating"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "photos", force: true do |t|
    t.string   "photo_data_type"
    t.integer  "photo_data_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
  end

  create_table "product_prices", force: true do |t|
    t.integer  "product_id"
    t.decimal  "price"
    t.integer  "godown_count",  default: 0
    t.decimal  "godown_amount", default: 0.0
    t.decimal  "godown_fee",    default: 0.0
    t.decimal  "godown_price",  default: 0.0
    t.integer  "status",        default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "products", force: true do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "full_name"
    t.string   "catalog"
    t.integer  "title_photo_id"
    t.integer  "status",         default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sales_sheet_items", force: true do |t|
    t.integer  "sales_sheet_id"
    t.string   "product_data_type"
    t.integer  "product_data_id"
    t.integer  "quantity",                                  default: 0
    t.decimal  "price",             precision: 8, scale: 2, default: 0.0
    t.decimal  "amount",            precision: 8, scale: 2, default: 0.0
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.string   "description"
    t.integer  "serial_product_id"
    t.string   "serial_number"
    t.integer  "product_id"
  end

  create_table "sales_sheets", force: true do |t|
    t.integer  "customer_id"
    t.integer  "warehouse_id"
    t.integer  "operator_id"
    t.integer  "total_items",                            default: 0
    t.decimal  "total_amount",   precision: 8, scale: 2, default: 0.0
    t.decimal  "additional_fee", precision: 8, scale: 2, default: 0.0
    t.decimal  "discount",       precision: 8, scale: 2, default: 0.0
    t.decimal  "actual_amount",  precision: 8, scale: 2, default: 0.0
    t.integer  "status",                                 default: 0
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "info"
  end

  create_table "serial_products", force: true do |t|
    t.string   "serial_number"
    t.string   "product_name"
    t.string   "product_model"
    t.integer  "title_photo_id"
    t.integer  "production_batch_id"
    t.string   "product_data_type"
    t.integer  "product_data_id"
    t.integer  "status",              default: 0
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "stock_id"
    t.integer  "product_id"
  end

  create_table "stock_journals", force: true do |t|
    t.integer  "stock_id"
    t.integer  "stock_before"
    t.integer  "stock_change"
    t.integer  "stock_after"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "stock_order_type"
    t.integer  "stock_order_id"
    t.integer  "product_id"
  end

  create_table "stock_taking_items", force: true do |t|
    t.integer  "stock_taking_id"
    t.string   "product_data_type"
    t.integer  "product_data_id"
    t.string   "full_name"
    t.string   "catalog"
    t.integer  "on_hand",           default: 0
    t.integer  "quantity",          default: 0
    t.integer  "status",            default: 0
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "product_id"
  end

  create_table "stock_takings", force: true do |t|
    t.integer  "warehouse_id"
    t.string   "info"
    t.integer  "status",       default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "stocks", force: true do |t|
    t.string   "product_data_type"
    t.integer  "product_data_id"
    t.integer  "on_hand",           default: 0
    t.string   "info"
    t.integer  "title_photo_id"
    t.date     "last_buy_date"
    t.date     "sold_out_date"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "warehouse_id"
    t.integer  "product_id"
  end

  create_table "warehouses", force: true do |t|
    t.string   "name"
    t.string   "pre_code"
    t.integer  "status",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
