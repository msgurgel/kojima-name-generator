class CreateKojimaNames < ActiveRecord::Migration[6.0]
  def change
    create_table :kojima_names do |t|
      t.string :full_name
      t.string :one_word_occupation
      t.string :pet
      t.string :two_word_memory
      t.string :least_stab_object
      t.string :good_at
      t.string :intangible_fear
      t.string :tangible_fear
      t.string :last_thing_you_did
      t.string :body_condition
      t.string :fav_state_of_matter
      t.string :similar_name
      t.string :zodiac_sign
      t.string :personality
      t.string :film_character
      t.string :kubrick
      t.string :joy_division
      t.string :npr
      t.string :military
      t.string :one_word_mikkelsen
      t.boolean :man_cond
      t.string :cond_cond_name
      t.boolean :kojima_cond

      t.timestamps
    end
  end
end
