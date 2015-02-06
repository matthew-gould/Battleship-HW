require 'pry'
class Grid

  def initialize 
  	@rows_array = [1,2,3,4,5,6,7,8,9,10]
  	@columns_array = [1,2,3,4,5,6,7,8,9,10]
  	@board = []
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
  		

  def show_row row
  	row.each do |coordinate|
  		if coordinate.length <=2

  			print " + "
  		elsif coordinate.length >= 2
  			print " X "
  			# hit or miss 
  		end

  	end
  end
  			


end

q = Grid.new
q.make_board
q.show_board