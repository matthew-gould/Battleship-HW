# require 'pry'
# # Thoughts on possible Coordinate class

# class Coordinate
# 	attr_reader :row, :column, :coor_array

# 	def initialize row, column
# 	@coor_array= []
# 	@row = row
# 	@column = column
# 	coor_array.push(@row, column)
# 	@occupied = false
# 	end

# 	def shot? 
# 		if @occupied
# 			# something that says it has been hit
# 		else
# 			# something that says it was a miss
# 		end

# 	end

# 	def occupy
# 		@occupied = true
# 	end

# end