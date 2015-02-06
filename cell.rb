# Cell.rb
# class Cell 2/5/15, 1:18 PM  David Livingston
# class Grid

class Grid
	ROWS = 10
	COLS = 20
	def initialize
		@board = []
		(1..ROWS).each do |i| 
			(1..COLS).each do |j|
				@board << [i,j]
			end
		end
	end
	
	def display
		(1..ROWS).each do |i| 
			row = @board.select { |cell| cell[0] == 1 }
			print "X" * row.length
			puts "\n"
		end
	end
end

class Cell
	attr_reader :coords, :neighbors
	# cell needs to know what its coords are at init
	def initialize coords=[0,0]
		@coords = coords
		@neighbors = determine_neighbors
	end
	
	def determine_neighbors
		temp = []
		x, y = @coords[0] - 1, @coords[1] - 1
		(x...x+3).each do |i|
			(y...y+3).each do |j|
				temp << [i,j] unless (i < 1 || j > Grid::COLS)
			end
			y = @coords[1] -1
		end
		# delete cell coords from array and return it
		temp.delete(@coords)
		temp
	end
	
	def neighbors
		# for display only - to see the arrays
		@neighbors.to_s
	end
	
end

########################
### Basic testing only
g = Grid.new
g.display

c = Cell.new([4,8])
puts c.neighbors