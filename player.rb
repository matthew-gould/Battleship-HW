require 'pry'

class Player
	attr_reader :name

	def initialize name
		@name = name.to_s

	end

end
