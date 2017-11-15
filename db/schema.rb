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

ActiveRecord::Schema.define(version: 20171115061934) do

  create_table "dictionaries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "meaning_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meaning_id"], name: "index_dictionaries_on_meaning_id"
    t.index ["user_id"], name: "index_dictionaries_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "sentence"
    t.text "translation"
    t.integer "meaning_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["meaning_id"], name: "index_examples_on_meaning_id"
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "example_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "voter"
    t.index ["example_id"], name: "index_likes_on_example_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "meanings", force: :cascade do |t|
    t.text "meaning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "word_id"
    t.integer "level"
    t.integer "eiken"
    t.integer "toeic"
    t.string "parse"
    t.index ["word_id"], name: "index_meanings_on_word_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nick_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "roles"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "words", force: :cascade do |t|
    t.string "english_word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["english_word"], name: "index_words_on_english_word", unique: true
  end

end
