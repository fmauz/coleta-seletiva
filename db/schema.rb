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

ActiveRecord::Schema.define(version: 20150330181136) do

  create_table "answer_collections", force: true do |t|
    t.integer  "answer_id"
    t.string   "text"
    t.string   "value"
    t.string   "event_js"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answer_collections", ["answer_id"], name: "index_answer_collections_on_answer_id", using: :btree

  create_table "answer_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: true do |t|
    t.integer  "answer_type_id"
    t.integer  "question_id"
    t.string   "placeholder"
    t.string   "label_text"
    t.string   "help_block"
    t.string   "css_class"
    t.string   "query_string"
    t.string   "element_ajax"
    t.string   "ajax_url"
    t.boolean  "required",       default: false
    t.integer  "min_length",     default: 1
    t.integer  "max_length",     default: 25
    t.boolean  "disabled"
    t.boolean  "number_only"
    t.boolean  "currency_only"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_cpf"
    t.boolean  "is_cnpj"
    t.boolean  "is_cep"
    t.boolean  "is_telefone"
    t.boolean  "is_percent"
    t.boolean  "is_kilos"
    t.boolean  "is_short_date"
  end

  add_index "answers", ["answer_type_id"], name: "index_answers_on_answer_type_id", using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "card_answers", force: true do |t|
    t.string   "value"
    t.integer  "card_question_id"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "card_answers", ["answer_id"], name: "index_card_answers_on_answer_id", using: :btree
  add_index "card_answers", ["card_question_id"], name: "index_card_answers_on_card_question_id", using: :btree

  create_table "card_questions", force: true do |t|
    t.integer  "card_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "card_questions", ["card_id"], name: "index_card_questions_on_card_id", using: :btree
  add_index "card_questions", ["question_id"], name: "index_card_questions_on_question_id", using: :btree

  create_table "cards", force: true do |t|
    t.string   "year"
    t.string   "month"
    t.integer  "survey_id"
    t.integer  "person_id"
    t.integer  "county_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["county_id"], name: "index_cards_on_county_id", using: :btree
  add_index "cards", ["person_id"], name: "index_cards_on_person_id", using: :btree
  add_index "cards", ["survey_id"], name: "index_cards_on_survey_id", using: :btree

  create_table "counties", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "cnpj"
    t.string   "logradouro_prefeitura",     default: ""
    t.string   "numero_prefeitura",         default: ""
    t.string   "complemento_prefeitura",    default: ""
    t.string   "bairro_prefeitura",         default: ""
    t.string   "populacao_total_municipio", default: ""
    t.string   "populacao_urbana",          default: ""
    t.string   "extensao_territorial",      default: ""
    t.string   "indice_destinacao",         default: ""
    t.string   "n_bairros",                 default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "domicilios_total",          default: "0"
    t.string   "populacao_rural",           default: "0"
    t.string   "cep_prefeitura",            default: "0"
    t.string   "color"
  end

  create_table "form_sections", force: true do |t|
    t.string   "name"
    t.integer  "form_section_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "form_sections", ["form_section_id"], name: "index_form_sections_on_form_section_id", using: :btree

  create_table "newsletters", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "profissao"
    t.string   "instituicao"
  end

  create_table "oficio_prefeituras", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "data_registro"
    t.string   "name_resp"
    t.integer  "county_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "archive_file_name"
    t.string   "archive_content_type"
    t.integer  "archive_file_size"
    t.datetime "archive_updated_at"
    t.string   "cargo"
  end

  add_index "oficio_prefeituras", ["county_id"], name: "index_oficio_prefeituras_on_county_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id", using: :btree

  create_table "questions", force: true do |t|
    t.integer  "section_id"
    t.boolean  "multiple_answer"
    t.string   "code"
    t.string   "content"
    t.string   "help_block"
    t.string   "css_class"
    t.boolean  "clear_question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order",           default: 0
  end

  add_index "questions", ["section_id"], name: "index_questions_on_section_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.integer  "survey_id"
    t.string   "name"
    t.string   "help_block"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order"
  end

  add_index "sections", ["survey_id"], name: "index_sections_on_survey_id", using: :btree

  create_table "surveys", force: true do |t|
    t.string   "name"
    t.string   "form_type"
    t.integer  "form_section_id"
    t.boolean  "disabled",             default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "archive_file_name"
    t.string   "archive_content_type"
    t.integer  "archive_file_size"
    t.datetime "archive_updated_at"
  end

  add_index "surveys", ["form_section_id"], name: "index_surveys_on_form_section_id", using: :btree

  create_table "users", force: true do |t|
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

end
