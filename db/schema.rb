# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_23_004050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.string "species"
    t.integer "light_req"
    t.integer "humidity_req"
    t.integer "water_freq"
    t.date "last_water"
    t.date "last_fert"
    t.string "comments"
    t.integer "space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name"
    t.integer "humidity"
    t.integer "light"
  end

end