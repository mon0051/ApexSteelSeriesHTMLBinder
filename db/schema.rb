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

ActiveRecord::Schema.define(version: 20141201040729) do

	create_table "key_groups", force: true do |t|
		t.text "name"
		t.text "color1"
		t.text "color2"
		t.text "color3"
		t.text "color4"
		t.datetime "created_at"
		t.datetime "updated_at"
	end

	create_table "keyblocks", force: true do |t|
		t.text "name"
		t.integer "x_offser"
		t.integer "y_offset"
		t.datetime "created_at"
		t.datetime "updated_at"
		t.integer "x_offset"
	end

	create_table "keycodes", force: true do |t|
		t.integer "code"
		t.text "mapped_action"
		t.datetime "created_at"
		t.datetime "updated_at"
	end

	create_table "keys", force: true do |t|
		t.text "scancode"
		t.text "name"
		t.integer "keygroup_id"
		t.integer "keycode1"
		t.integer "keycode2"
		t.integer "keycode3"
		t.integer "keycode4"
		t.datetime "created_at"
		t.datetime "updated_at"
		t.integer "x_pos"
		t.integer "y_pos"
		t.integer "keyblock_id"
	end

end
