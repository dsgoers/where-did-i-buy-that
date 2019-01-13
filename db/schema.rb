# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_190_112_233_553) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'group_permissions', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'group_id', null: false
    t.index ['group_id'], name: 'index_group_permissions_on_group_id'
    t.index %w[user_id group_id], name: 'index_group_permissions_on_user_id_and_group_id', unique: true
    t.index ['user_id'], name: 'index_group_permissions_on_user_id'
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'name', null: false
  end

  create_table 'items', force: :cascade do |t|
    t.string 'name', null: false
  end

  create_table 'purchases', force: :cascade do |t|
    t.bigint 'store_id', null: false
    t.bigint 'item_id', null: false
    t.bigint 'user_id', null: false
    t.datetime 'timestamp', null: false
    t.decimal 'price', null: false
    t.index ['item_id'], name: 'index_purchases_on_item_id'
    t.index ['store_id'], name: 'index_purchases_on_store_id'
    t.index ['user_id'], name: 'index_purchases_on_user_id'
  end

  create_table 'stores', force: :cascade do |t|
    t.string 'name', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name', null: false
  end

  add_foreign_key 'group_permissions', 'groups'
  add_foreign_key 'group_permissions', 'users'
  add_foreign_key 'purchases', 'items'
  add_foreign_key 'purchases', 'stores'
  add_foreign_key 'purchases', 'users'
end
