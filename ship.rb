require 'pry'
class Ship

  attr_reader :length, :build

  def initialize position, length=0
    @length = length.to_i
    @position = position.to_s
    @hits = 0
  end

  def vertical?

    if @position == "v"
      true
    elsif @position == "h"
      false
    end
  end
# Ship also needs to know when it is hit
# Ship needs to know when it is sunk
# Ship needs to know where it is positioned

  def sunk?
    @length == @hits
  end

  def hits
    @hits += 1
  end

  def ship_build r, c
    new_array = []
    if @position == true
      new_array.push([r,c])
      @length.times do
        c.to_i
        r.to_i

        new_array.push([(r+=1),c])
      end
      return new_array
    else
      new_array.push([r,c])
      @length.times do 
        c.to_i
        r.to_i
        new_array.push([r, (c+=1)])
      end
    
    new_array 
    end
  
  end

  # def bounds? (new_array)
  #  matches = new_array.each {|coordinates| grid.each.include? coordinates}
  #   if matches == new_array
  #     true
  #   else
  #     false
    
end

a = Ship.new("v", 5)
binding.pry
