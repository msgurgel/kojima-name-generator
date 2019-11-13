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

ActiveRecord::Schema.define(version: 2019_11_13_135949) do

  create_table "kojima_names", force: :cascade do |t|
    t.string "full_name"
    t.string "one_word_occupation"
    t.string "pet"
    t.string "two_word_memory"
    t.string "least_stab_object"
    t.string "good_at"
    t.string "intangible_fear"
    t.string "tangible_fear"
    t.string "last_thing_you_did"
    t.string "body_condition"
    t.string "fav_state_of_matter"
    t.string "similar_name"
    t.string "zodiac_sign"
    t.string "personality"
    t.string "film_character"
    t.string "kubrick"
    t.string "joy_division"
    t.string "npr"
    t.string "military"
    t.string "one_word_mikkelsen"
    t.boolean "man_cond"
    t.string "cond_cond_name"
    t.boolean "kojima_cond"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
