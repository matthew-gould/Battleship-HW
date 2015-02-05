require 'pry'
class Ship

  attr_reader :length

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

end