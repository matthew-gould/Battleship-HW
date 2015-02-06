require 'pry'
class Ship

  attr_reader :length

  def initialize position, length=0
    @length = length.to_i
    @position = position.to_s
    @hits = 0
    @ship_build = []
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
    if @position == true
      @length.times do
        c.to_i
        r.to_i
        @ship_build.push [(r+=1),c]
      end
    else
      @length.times do 
        c.to_i
        r.to_i
        @ship_build.push [r, (c+=1)]
      end
      return @ship_build
    end
  end

  def bounds?
    @ship_build.each do |coordinates|
      if !@board.include?
        return false
      end
    end
      puts "Out of bounds, asshole!"
  end



end