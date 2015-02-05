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

end