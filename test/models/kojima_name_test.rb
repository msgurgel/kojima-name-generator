require 'test_helper'

class KojimaNameTest < ActiveSupport::TestCase
  def setup
    @k_name = KojimaName.new(
      full_name: 'John Dandy',
      one_word_occupation: 'Farmer',
      personality: "Hyper",
      good_at: "Jumping",
      similar_name: "Drone",
      film_character: "MacReady",
      last_thing_you_did: "Ate Dinner"
    )
  end

  test 'should generate normal name with no conditions' do
    assert_equal @k_name.full_name, @k_name.normal_name
  end


  test 'should generate normal name with Man condition' do
    @k_name.man_cond = true
    assert_equal @k_name.full_name + "Man", @k_name.normal_name
  end

  test 'should generate normal name with Condition condition' do
    @k_name.cond_cond_name = "Big"
    assert_equal "Big " + @k_name.full_name, @k_name.normal_name
  end

  test 'should generate occupational name with dice value 1 and no conditions' do
    assert_equal @k_name.personality + " " + @k_name.one_word_occupation, @k_name.occupational_name(1)
  end

  test 'should generate occupational name with dice value 2 and no conditions' do
    assert_equal @k_name.good_at + " " + @k_name.one_word_occupation, @k_name.occupational_name(2)
  end

  test 'should generate occupational name with dice value 3 and no conditions' do
    assert_equal @k_name.similar_name + " " + @k_name.one_word_occupation, @k_name.occupational_name(3)
  end

  test 'should generate occupational name with dice value 4 and no conditions' do
    assert_equal @k_name.film_character + " " + @k_name.one_word_occupation, @k_name.occupational_name(4)
  end

  test 'should generate occupational name with dice value 1 and with Condition condition' do
    @k_name.cond_cond_name = "Big"
    assert_equal "Big " + @k_name.film_character + " " + @k_name.one_word_occupation, @k_name.occupational_name(4)
  end


  test 'should generate occupational name with dice value 1 and with Man condition' do
    @k_name.man_cond = true
    assert_equal @k_name.film_character + " " + @k_name.one_word_occupation + "Man", @k_name.occupational_name(4)
  end


  test 'should generate lacks subtext name with no conditions' do
    assert_equal @k_name.last_thing_you_did, @k_name.lacks_subtext_name
  end

end
