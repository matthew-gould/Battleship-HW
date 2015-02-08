require 'simplecov'
SimpleCov.start
require './ship'
require './player'
require './grid'
require 'pry'


# Game start:

puts "\n\n******************************"
puts "****Welcome to BATTLESHIP!****"
puts "******************************\n\n"

players = []
(1..2).each do |x|
	puts "Player #{x}, what is your name!?"
	name = gets.chomp.downcase.capitalize
	players << Player.new(name)
end

#Game.new
puts "Player 1 is #{players[0].name}"
puts "Player 2 is #{players[1].name}"

puts "Let's set up your ships!"

# name.ships - to call the ship creation
# still need to allow them to place the 
# ships... here or in the ships class?

# until winner? 
#   game.take_turn

# if = sunk? or hits (?), we need to puts
#   a message that alerts the players.



