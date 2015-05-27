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

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150504004020) do
=======
=======
>>>>>>> checkpoint-26-SeedData
ActiveRecord::Schema.define(version: 20150517211752) do
=======
ActiveRecord::Schema.define(version: 20150518064512) do

  create_table "advertisements", force: true do |t|
    t.string   "title"
    t.text     "copy"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
>>>>>>> Assignment-27-CRUD

  create_table "answers", force: true do |t|
    t.text     "body"
    t.integer  "Question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["Question_id"], name: "index_answers_on_Question_id"
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 4b67b34ff3ac57d897c10df8dd61afecfc4dfbb1
=======
>>>>>>> checkpoint-26-SeedData
=======
>>>>>>> Assignment-27-CRUD

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "posts", force: true do |t|
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    t.string   "tite"
=======
    t.string   "title"
>>>>>>> 4b67b34ff3ac57d897c10df8dd61afecfc4dfbb1
=======
    t.string   "title"
>>>>>>> checkpoint-26-SeedData
=======
    t.string   "title"
>>>>>>> Assignment-27-CRUD
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> checkpoint-26-SeedData
=======
>>>>>>> Assignment-27-CRUD
  create_table "questions", force: true do |t|
    t.string   "title"
    t.boolean  "resolved"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 4b67b34ff3ac57d897c10df8dd61afecfc4dfbb1
=======
>>>>>>> checkpoint-26-SeedData
=======
>>>>>>> Assignment-27-CRUD
end
