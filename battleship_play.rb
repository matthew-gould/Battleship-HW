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

2.times do |x|
puts "Player#{x+1}, what is your name!?"
name = gets.chomp.downcase.capitalize

Player.new(name)
Game.new

end

puts "Let's set up your ships!"

# name.ships - to call the ship creation
# still need to allow them to place the 
# ships... here or in the ships class?

# until winner? 
#   game.take_turn

# if = sunk? or hits (?), we need to puts
#   a message that alerts the players.



