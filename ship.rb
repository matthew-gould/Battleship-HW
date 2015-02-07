require 'pry'
require './player'
require './grid'
binding.pry

class Ship

  attr_reader :length

  def initialize position, length=0
    @length = length.to_i
    @position = position.to_s
    @ships_array = []
  end

  def vertical?

    if @position == "v"
      true
    elsif @position == "h"
      false
    end
  end

  def ship_build r, c
    new_array = []
    if @position == true
      new_array.push([r,c])
      actual = @length
      (actual-1).times do
        c.to_i
        r.to_i
        new_array.push([(r+=1),c])
      end
      return new_array
    else
      new_array.push([r,c])
      actuary = @length 
      (actuary-1).times do 
        c.to_i
        r.to_i
        new_array.push([r, (c+=1)])
      end
      if self.in_bounds?(new_array)
        # if it is in a unique space
        return new_array
      end
   end
 end

  def in_bounds? (new_array)
    new_array.all? {|x| self.square_in_bounds?(x)}
  end

  def square_in_bounds? (coordinate)
    coordinate.all? {|x|  x < 11 && x >0}
  end

  def unique_space? (ship_placement, ships_place)
      if ships_place.any?{|x| ship_placement.include? x}
      end
  end



end