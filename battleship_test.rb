require 'minitest/autorun'
require './ship'
require './player'
require './grid'
require 'pry'
require 'coordinate_class.rb'


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

  def test_that_player_has_own_grid
    t = Player.new ("Rob")
    assert_kind_of Grid, t.grid
  end

  def test_that_player_has_ships
    t = Player.new ("Rob")
    myships = []
    myships.push t.ships
    assert_equal myships[0].length, 5
  end

  # def test_that_player_can_shoot
  #   t = Player.new ("Rob")
  #   t.shoot ("a", 1)
  #   assert (:A, 1).shot?
  #   #Do we want to ask if it has shot? That's another function.
  #   #We could try to assert that the coordinate has been shot.
  # end


  # def test_that_player_can_position_ships
  #   t = Player.new ("Rob")

  # def test_grid_has_arrays
  # end

  	def test_coordinate_knows_its_position
      c = Coordinate.new "B", 5
      binding.pry
      assert_equal c.row, :B
      assert_equal c.column, 5
    end

    # def test_coordinate_knows_if_it_is_occupied
    # end

    # def test_coordinate_returns_hit_or_miss_when_shot
    # end


end