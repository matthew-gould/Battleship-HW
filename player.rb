require 'pry'

class Player
	attr_reader :name, :grid

	def initialize name
    @ship_array = [2,3,3,4,5]
		@name = name.to_s
    @grid = Grid.new
	end

  def ships
    empty = []
    @ship_array.each do |x|
      puts "Would you like your #{x} ship to be vertical or horizontal? (v/h)"
      position = gets.chomp.downcase

      empty.push Ship.new(position, x)
    end
    empty
  end

  def shoot (x,y)
    #grid needs to check coordinates for hit/miss
  	#return hit or miss

  end

end