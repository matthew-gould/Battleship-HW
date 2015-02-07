require 'pry'
require './grid'
require './ship'

class Player
	attr_reader :name, :grid, :ship_placement

	def initialize name
    @length_array = [2,3,3,4,5]
		@name = name.to_s
    @grid = Grid.new
    @ship_placement = []
	end

  def ships
    empty = []
    ships_place = []
    @length_array.each do |x|
      puts "Would you like your #{x} ship to be vertical or horizontal? (v/h)"
      position = gets.chomp.downcase
      this_ship =  Ship.new(position, x)
      puts "Please enter the starting coordinates for this ship. First, what row?"
      row = gets.chomp.to_i
      puts "Now the column."
      column = gets.chomp.to_i
      ships_place = this_ship.ship_build(row,column)
        if this_ship.unique_space?(@ship_placement, ships_place)
          @ship_placement.push ships_place
        else
          puts "You can't put that there, idiot."
        end
    end
    @ship_placement
    binding.pry
  end

  def shoot (x,y)
  	#grid needs to check coordinates for hit/miss
  	#return hit or miss

  end

end

a = Player.new ("Bob")
binding.pry
a.ships
binding.pry
