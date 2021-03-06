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

ActiveRecord::Schema.define(version: 20150609204040) do

  create_table "bills", force: :cascade do |t|
    t.string   "bill_number",   limit: 10,  null: false
    t.string   "bill_control",  limit: 10,  null: false
    t.date     "emition_date"
    t.date     "payment_date"
    t.string   "client_rif",    limit: 15,  null: false
    t.string   "client_name",   limit: 40,  null: false
    t.string   "client_adress", limit: 255
    t.string   "client_phone",  limit: 11,  null: false
    t.string   "client_email",  limit: 30
    t.string   "detail",        limit: 255
    t.integer  "quantity",      limit: 4,   null: false
    t.integer  "unit_price",    limit: 4,   null: false
    t.integer  "tax",           limit: 4,   null: false
    t.integer  "bill_total",    limit: 4,   null: false
    t.string   "status",        limit: 9,   null: false
    t.integer  "service_id",    limit: 4
    t.integer  "client_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "bills", ["bill_control"], name: "index_bills_on_bill_control", using: :btree
  add_index "bills", ["bill_number"], name: "index_bills_on_bill_number", using: :btree
  add_index "bills", ["client_id"], name: "index_bills_on_client_id", using: :btree
  add_index "bills", ["service_id"], name: "index_bills_on_service_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 40,  null: false
    t.string   "rif",        limit: 15,  null: false
    t.string   "address",    limit: 255
    t.string   "phone",      limit: 11,  null: false
    t.string   "email",      limit: 30,  null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "clients", ["rif"], name: "index_clients_on_rif", using: :btree

  create_table "provider_bills", force: :cascade do |t|
    t.integer  "bill_number", limit: 4,   null: false
    t.string   "description", limit: 255
    t.integer  "amount",      limit: 4,   null: false
    t.string   "status",      limit: 9,   null: false
    t.integer  "provider_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "provider_bills", ["provider_id"], name: "index_provider_bills_on_provider_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "name",       limit: 40,  null: false
    t.string   "rif",        limit: 15,  null: false
    t.string   "adress",     limit: 255, null: false
    t.string   "phone",      limit: 11,  null: false
    t.string   "email",      limit: 30,  null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",       limit: 40,  null: false
    t.string   "details",    limit: 255, null: false
    t.integer  "amount",     limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",           limit: 15,  null: false
    t.string   "l_name",         limit: 15,  null: false
    t.string   "adress",         limit: 255
    t.string   "phone",          limit: 11,  null: false
    t.string   "email",          limit: 30,  null: false
    t.string   "active",         limit: 1,   null: false
    t.string   "identification", limit: 10,  null: false
    t.integer  "client_id",      limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "students", ["client_id"], name: "index_students_on_client_id", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.string   "transaction_number", limit: 20, null: false
    t.integer  "transaction_total",  limit: 4,  null: false
    t.date     "transaction_date",              null: false
    t.integer  "bill_number",        limit: 4,  null: false
    t.integer  "bill_id",            limit: 4
    t.integer  "provider_bill_id",   limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "transactions", ["bill_id"], name: "index_transactions_on_bill_id", using: :btree
  add_index "transactions", ["provider_bill_id"], name: "index_transactions_on_provider_bill_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",           limit: 15,  null: false
    t.string   "l_name",         limit: 15,  null: false
    t.string   "identification", limit: 11,  null: false
    t.string   "adress",         limit: 255
    t.string   "phone",          limit: 11,  null: false
    t.string   "email",          limit: 30,  null: false
    t.string   "u_name",         limit: 15,  null: false
    t.string   "u_passwd",       limit: 20,  null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "users", ["identification"], name: "index_users_on_identification", using: :btree
  add_index "users", ["u_name"], name: "index_users_on_u_name", using: :btree

  add_foreign_key "bills", "clients"
  add_foreign_key "bills", "services"
  add_foreign_key "provider_bills", "providers"
  add_foreign_key "students", "clients"
  add_foreign_key "transactions", "bills"
  add_foreign_key "transactions", "provider_bills"
end
