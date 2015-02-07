require 'minitest/autorun'
require './ship'
require './player'
require './grid'
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

  def test_ship_build_returns_an_array
    a = Ship.new("v", 5)
    assert  (a.ship_build(10,10)).is_a?(Array)
  end

  # def test_ship_builds_returns_false_if_out_of_bounds
  #   a = Ship.new("v", 5)
  #   q = a.ship_build(10,10)
  #   refute q
  # end

  def test_ship_in_bounds?
    a = Ship.new("v",5)
    q = a.ship_build(10,10)
    binding.pry
    refute a.in_bounds?(q)
  end

end