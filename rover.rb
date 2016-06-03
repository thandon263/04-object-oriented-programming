class Rover

  attr_accessor :location, :direction

  def initialise(location, direction)
    @location = location
    @direction = direction
  end

  def read_instruction
    p "Where do you want the Rover to go?"
    @input = gets.chomp
  end

  def move(x, y)
    if @location == x && @location == y
      return @location
    else
      return "No specific location"
    end
  end

  def turn(n, s, e, w)

      if @input == n || @input == s
        @direction
      end
      if @input == e || @input == w
        @direction
      end
  end
end

rover1 = Rover.new
