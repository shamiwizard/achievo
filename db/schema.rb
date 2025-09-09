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

ActiveRecord::Schema[8.0].define(version: 2025_09_09_222954) do
  create_table "achievement_progresses", force: :cascade do |t|
    t.integer "friendship_id"
    t.integer "group_id"
    t.integer "achievement_id", null: false
    t.integer "status", default: 0, null: false
    t.integer "progress", default: 0, null: false
    t.datetime "started_at"
    t.datetime "unlocked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["achievement_id"], name: "index_achievement_progresses_on_achievement_id"
    t.index ["friendship_id"], name: "index_achievement_progresses_on_friendship_id"
    t.index ["group_id"], name: "index_achievement_progresses_on_group_id"
  end

  create_table "achievements", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.string "icon", null: false
    t.integer "kind", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "friend_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "kind", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_groups_users_on_group_id"
    t.index ["user_id"], name: "index_groups_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "username", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "achievement_progresses", "achievements"
  add_foreign_key "achievement_progresses", "friendships"
  add_foreign_key "achievement_progresses", "groups"
  add_foreign_key "friendships", "users"
  add_foreign_key "friendships", "users", column: "friend_id"
  add_foreign_key "groups_users", "groups"
  add_foreign_key "groups_users", "users"
end
