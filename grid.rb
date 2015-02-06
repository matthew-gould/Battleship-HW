# Class Grid

require 'pry'
class Grid
	ROWS = 10
	COLS = 10
	
	attr_accessor :hits, :misses
	attr_reader :board 

  def initialize 
  	@rows_array = [1,2,3,4,5,6,7,8,9,10]
  	@columns_array = [1,2,3,4,5,6,7,8,9,10]
  	@board = []
  	@hits = []
  	@misses = []
  end
  	

  def make_board 
  	@rows_array.each do |r|
  		array_for_row = []
  		@columns_array.each do |c| 
  			coordinate = []
  			coordinate.push [r, c]
  			array_for_row.push coordinate
  			end
  			@board.push array_for_row
  	end
  	return @board
  end 

  def show_board 
  	@board.each do |row|
  		show_row row
  		puts ""
  	end
  end
  
  def record_shot coord, hit=false
  	hit ? hits << coord : misses << coord
  end
  
  def draw_board
  	rMax, cMax = ROWS, COLS
  	# Print the column number
  	print "   "
  	(1..COLS).each do |k|
  		print " #{k} "
  	end
  	puts "\n"
  	
  	(1..rMax).each do |i| 
  		# Print the row letter
  		print (i + 64).chr + ": "
  		(1..cMax).each do |j|
  			if @hits.include?([i,j])
  				print " x "
  			elsif @misses.include?([i,j])
  				print " - "
  			else
  				print " + "
  			end
  		end
  		puts "\n"
  		cMax = COLS
  	end
  end
  			


end

# q = Grid.new
# q.draw_board
# q.make_board
# q.show_board