class Ship

  attr_reader :vertical, :length

  def initialize vertical, length=0
    @length = length.to_i
    @vertical = vertical.to_s
  end

  def vertical?
    if @vertical.include?("v")
      return true
    else @vertical.include?("h")
      return false
    end
  end

end