# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_30_152213) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"


  create_table "edges", force: :cascade do |t|
    t.bigint "start_node_id", null: false
    t.bigint "end_node_id", null: false
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_node_id"], name: "index_edges_on_end_node_id"
    t.index ["start_node_id"], name: "index_edges_on_start_node_id"
  end

  create_table "nodes", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

 

  add_foreign_key "edges", "nodes", column: "end_node_id"
  add_foreign_key "edges", "nodes", column: "start_node_id"
end
