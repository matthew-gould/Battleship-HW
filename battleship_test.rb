require 'minitest/autorun'
require './ship'
require './player'
require 'pry'


class BattleshipTests < MiniTest::Test

  def test_ship_has_a_length
    ship = Ship.new "v", 3
    assert ship.length > 0
  end

  def test_ship_is_horizontal_or_vertical
    ship = Ship.new "v", 3
    assert ship.vertical?

    ship_two = Ship.new "h", 3
    refute ship_two.vertical?
  end

  # def test_if_the_ship_knows_it_has_been_hit
  # 	ship = Ship.new "h"
  # end
#  TESTS FOR GAME CLASS

# 	def test_game_knows_when_it_is_over
# 		b = Battleship_Game.new
# 		assert b.over?
# end

	def test_player_knows_his_or_her_name
		t = Player.new ("Rob")
		assert_equal t.name, "Rob"
	end


end