require 'pry'
class Ship

  attr_reader :length

  def initialize position, length=0
    @length = length.to_i
    @position = position.to_s
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
end