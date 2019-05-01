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

ActiveRecord::Schema.define(version: 2019_05_01_175024) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grupos", force: :cascade do |t|
    t.string "nome_grupo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sorteios", force: :cascade do |t|
    t.bigint "grupo_id"
    t.bigint "remetente_id"
    t.bigint "destinatario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destinatario_id"], name: "index_sorteios_on_destinatario_id"
    t.index ["grupo_id"], name: "index_sorteios_on_grupo_id"
    t.index ["remetente_id"], name: "index_sorteios_on_remetente_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nome", default: "", null: false
    t.datetime "dataNascimento", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuario_grupos", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "grupo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grupo_id"], name: "index_usuario_grupos_on_grupo_id"
    t.index ["user_id"], name: "index_usuario_grupos_on_user_id"
  end

  add_foreign_key "sorteios", "grupos"
  add_foreign_key "sorteios", "users", column: "destinatario_id"
  add_foreign_key "sorteios", "users", column: "remetente_id"
  add_foreign_key "usuario_grupos", "grupos"
  add_foreign_key "usuario_grupos", "users"
end
