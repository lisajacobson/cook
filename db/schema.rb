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

ActiveRecord::Schema.define(version: 20141118200628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: true do |t|
    t.string  "cuisine_name"
    t.integer "user_id"
  end

  add_index "cuisines", ["user_id"], name: "index_cuisines_on_user_id", using: :btree

  create_table "cuisines_recipes", id: false, force: true do |t|
    t.integer "cuisine_id"
    t.integer "recipe_id"
  end

  create_table "ingredients", force: true do |t|
    t.string  "ingredient_name"
    t.integer "recipe_id"
  end

  add_index "ingredients", ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree

  create_table "lists", force: true do |t|
    t.string  "list_name"
    t.integer "user_id"
  end

  add_index "lists", ["user_id"], name: "index_lists_on_user_id", using: :btree

  create_table "recipes", force: true do |t|
    t.string  "recipe_name"
    t.string  "source_url"
    t.integer "total_time"
    t.integer "servings"
    t.string  "image"
    t.integer "list_id"
    t.integer "user_id"
  end

  add_index "recipes", ["list_id"], name: "index_recipes_on_list_id", using: :btree
  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id", using: :btree

  create_table "recipes_users", id: false, force: true do |t|
    t.integer "user_id",   null: false
    t.integer "recipe_id", null: false
  end

  add_index "recipes_users", ["recipe_id", "user_id"], name: "index_recipes_users_on_recipe_id_and_user_id", using: :btree
  add_index "recipes_users", ["user_id", "recipe_id"], name: "index_recipes_users_on_user_id_and_recipe_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
