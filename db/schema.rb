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

ActiveRecord::Schema[7.0].define(version: 2023_02_18_200002) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carteiras", force: :cascade do |t|
    t.string "nome"
    t.decimal "saldo", precision: 10, scale: 2
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria", force: :cascade do |t|
    t.string "nome"
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tipo"
  end

  create_table "faturas", force: :cascade do |t|
    t.string "referencia"
    t.bigint "linha_credito_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linha_credito_id"], name: "index_faturas_on_linha_credito_id"
  end

  create_table "lancamentos", force: :cascade do |t|
    t.string "descricao"
    t.decimal "valor_previsto", precision: 10, scale: 2
    t.decimal "valor_efetivo", precision: 10, scale: 2
    t.datetime "data_prevista"
    t.datetime "data_efetiva"
    t.bigserial "categoria_id", null: false
    t.bigserial "carteira_id", null: false
    t.bigserial "fatura_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carteira_id"], name: "index_lancamentos_on_carteira_id"
    t.index ["categoria_id"], name: "index_lancamentos_on_categoria_id"
    t.index ["fatura_id"], name: "index_lancamentos_on_fatura_id"
  end

  create_table "linha_creditos", force: :cascade do |t|
    t.string "descricao"
    t.string "cor"
    t.integer "dia_fechamento"
    t.integer "dia_vencto"
    t.datetime "data_ativacao"
    t.datetime "data_encerramento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "faturas", "linha_creditos"
end
