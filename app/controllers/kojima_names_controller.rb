class KojimaNamesController < ApplicationController
    def new
        @kojima_name = KojimaName.new
    end

    def create
        @kojima_name = KojimaName.new(kojima_name_params)

        # Set conditions
        man_cond  = rand(1..4)
        cond_cond = rand(1..8)

        @kojima_name.man_cond = man_cond == 4

        if cond_cond == 6
            @kojima_name.cond_cond_name = "Big"
        elsif cond_cond == 7
            @kojima_name.cond_cond_name = "Old"
        elsif cond_cond == 8
            @kojima_name.cond_cond_name = @kojima_name.body_condition
        end

        @kojima_name.save
        redirect_to @kojima_name
    end

    def show
        @kojima_name = KojimaName.find(params[:id])
    end

    private
        def kojima_name_params
        params.require(:kojima_name).permit(
            :full_name,
            :one_word_occupation,
            :pet,
            :two_word_memory,
            :least_stab_object,
            :good_at,
            :intangible_fear,
            :tangible_fear,
            :last_thing_you_did,
            :body_condition,
            :fav_state_of_matter,
            :similar_name,
            :zodiac_sign,
            :personality,
            :film_character,
            :kubrick,
            :joy_division,
            :npr,
            :military,
            :one_word_mikkelsen,
        )
        end
end
