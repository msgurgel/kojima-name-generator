class KojimaName < ApplicationRecord
    def normal_name
        name = ""
        name += (cond_cond_name + " ") unless cond_cond_name.nil?
        name += full_name
        name += "Man" if man_cond
        name.titlecase
    end

    def occupational_name(dice_value = nil)
        dice_value = rand(1..4) if dice_value.nil?

        name = ""
        name += (cond_cond_name + " ") unless cond_cond_name.nil?

        if dice_value == 1
            name += personality + " " + one_word_occupation
        elsif dice_value == 2
            name += good_at + " " + one_word_occupation
        elsif dice_value == 3
            name += similar_name + " " + one_word_occupation
        else
            name += film_character + " " + one_word_occupation
        end

        name += "Man" if man_cond
        name.titlecase
    end

    def horny_name(dice_value = nil)
        dice_value = rand(1..4) if dice_value.nil?

        name = ""
        name += (cond_cond_name + " ") unless cond_cond_name.nil?

        if dice_value == 1
            name += fav_state_of_matter + " " + pet
        elsif dice_value == 2
            name += "Naked " + pet
        elsif dice_value == 3
            name += good_at + " " + pet
        else
            name += zodiac_sign + " " + pet
        end

        name += "Man" if man_cond
        name.titlecase
    end

    def the_name(dice_value = nil)
        dice_value = rand(1..4) if dice_value.nil?

        name = "The "
        name += (cond_cond_name + " ") unless cond_cond_name.nil?

        if dice_value == 1
            name += intangible_fear
        elsif dice_value == 2
            name += tangible_fear
        elsif dice_value == 3
            name += two_word_memory
        else
            name += military
        end

        name += "Man" if man_cond
        name.titlecase
    end

    def cool_name(dice_value = nil)
        dice_value = rand(1..6) if dice_value.nil?

        name = one_word_mikkelsen + " "
        name += (cond_cond_name + " ") unless cond_cond_name.nil?

        if dice_value == 1
            name += kubrick
        elsif dice_value == 2
            name += joy_division
        elsif dice_value == 3
            name += npr
        elsif dice_value == 4
            name += good_at
        elsif dice_value == 5
            name += intangible_fear
        else
            name += similar_name
        end

        name += "Man" if man_cond
        name.titlecase
    end

    def violent_name(dice_value = nil)
        dice_value = rand(1..4) if dice_value.nil?

        name = ""

        if dice_value == 1
            name += npr + " " + least_stab_object
        elsif dice_value == 2
            name += fav_state_of_matter + " " + least_stab_object
        elsif dice_value == 3
            name += military + " " + least_stab_object
        else
            name += tangible_fear + " " + least_stab_object
        end

        name.titlecase
    end

    def lacks_subtext_name
        name = ""
        name += (cond_cond_name + " ") unless cond_cond_name.nil?

        name += last_thing_you_did

        name += "Man" if man_cond
        name.titlecase
    end
end
