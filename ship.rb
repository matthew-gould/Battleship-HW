require 'pry'
class Ship

  attr_reader :length, :build

  def initialize position, length=0
    @length = length.to_i
    @position = position.to_s
    @hits = 0
    @build = []
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
        @build = @build.push([(r+=1),c])
        # binding.pry
      end
    else
      @length.times do 
        c.to_i
        r.to_i
        @build = @build.push([r, (c+=1)])
      end
    end
    return @build
  end

  def bounds? grid
    @build.each do |coordinates|
      # binding.pry
        if coordinates == grid.each.include? coordinates
        return true
      else
        false
      end
    end
  end

      


    #   if @position == true
    #     if coordinates[0] > 10
    #       return false

    #  unless grid.each.include?(coordinates)
    #     return false
    #   else
    #     true
    #   end
    # end

end