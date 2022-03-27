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

ActiveRecord::Schema[7.0].define(version: 2022_03_26_155442) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripción"
    t.decimal "precio", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imágenes", default: [], array: true
    t.bigint "usuario_id", null: false
    t.index ["usuario_id"], name: "index_productos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
  end

  add_foreign_key "productos", "usuarios"
end
