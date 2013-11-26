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

ActiveRecord::Schema.define(version: 20131124014009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "body"
    t.datetime "posted_at"
    t.integer  "review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["review_id"], name: "index_comments_on_review_id", using: :btree

  create_table "relationships", id: false, force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree

  create_table "reviews", force: true do |t|
    t.string   "restaurant"
    t.text     "body"
    t.integer  "user_id"
    t.date     "published_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "reviews_tags", id: false, force: true do |t|
    t.integer "review_id"
    t.integer "tag_id"
  end

  add_index "reviews_tags", ["review_id", "tag_id"], name: "index_reviews_tags_on_review_id_and_tag_id", unique: true, using: :btree
  add_index "reviews_tags", ["review_id"], name: "index_reviews_tags_on_review_id", using: :btree
  add_index "reviews_tags", ["tag_id"], name: "index_reviews_tags_on_tag_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "credential"
    t.text     "avatar_href"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
