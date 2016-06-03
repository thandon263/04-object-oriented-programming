class Rover

  attr_accessor :direction
  attr_reader :x, :y

  def initialise(location, direction)
    @x = x
    @y = y
    @direction = direction
  end

#
    def instruction
      case
      when 'm'
        "move to position"
      when 'l' || 'r'
        "turn to #{@direction}"
      end

    end

  def move(x, y)
    if @location == x && @location == y
      return @location
    else
      return "No specific location"
    end
  end

  def turn(n, s, e, w)

      if @inputA == n || @inputA == s
        @direction
      end
      if @inputB == e || @inputB == w
        @direction
      end
  end
end

rover1 = Rover.new

# class Point
#     attr_accessor :x,:y
#
#     def initialize(*args)
#         @x, @y=args
#     end
#
#     def instruction
#       case
#       when 'm'
#         "move to position"
#       when 'l' || 'r'
#         "turn to #{@direction}"
#       end
#
#     end
#
#     def move
#
#
#     end
#
#
# end

array_of_coords = (1..n).map { |i, j| p Point.new(1, i) }
