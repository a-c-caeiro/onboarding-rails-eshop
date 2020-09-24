# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_21_155824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orderdetails", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "product_id", null: false
    t.integer "p_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "discount", default: "0.0"
    t.index ["order_id"], name: "index_orderdetails_on_order_id"
    t.index ["product_id"], name: "index_orderdetails_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "total_price"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id", null: false
    t.decimal "subtotal", default: "0.0", null: false
    t.decimal "shipping_cost", default: "0.0", null: false
    t.decimal "discount", default: "0.0", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "supplier_id", null: false
    t.decimal "raw_price", default: "0.0", null: false
    t.string "icon_link"
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "icon_link"
    t.decimal "rating", default: "5.0", null: false
    t.string "type"
  end

  add_foreign_key "orderdetails", "orders"
  add_foreign_key "orderdetails", "products"
  add_foreign_key "orders", "users", column: "customer_id"
  add_foreign_key "products", "users", column: "supplier_id"
end
