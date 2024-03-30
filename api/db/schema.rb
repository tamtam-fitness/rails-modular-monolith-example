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

ActiveRecord::Schema[7.0].define(version: 2024_03_30_115545) do
  create_table "books", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "publication_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "library_books", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", comment: "図書情報を管理するテーブル", force: :cascade do |t|
    t.string "title", null: false, comment: "タイトル"
    t.string "author", null: false, comment: "著者"
    t.integer "published_year", null: false, comment: "出版年"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
