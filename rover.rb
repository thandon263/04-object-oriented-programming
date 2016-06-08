class Rover

	attr_reader :input

	Cardinal_points = ["n", "e", "s", "w"]

	def initialize (x = 0, y = 0, direction = "n")
		@x_coordinate = x
		@y_coordinate = y
		@direction = direction
	end

	def instructions
		puts "What do you want to do? Key:\n [M] to Move\n [R] to Right\n [L] to Left\n[Exit] to quit!"
		@input = gets.strip.downcase

		@input.each_char do |x|
			case x
				when "l"
					@direction = Cardinal_points[Cardinal_points.index(@direction)-1]
				when "r"
					@direction = Cardinal_points[(Cardinal_points.index(@direction)+1)%4]
				when "m"
					move
				when "exit"
					break
			end
		end

	end

	def move
		case @direction
		when "n"
			@y_coordinate += 1
		when "s"
			@y_coordinate -= 1
		when "e"
			@x_coordinate += 1
		when "w"
			@x_coordinate -= 1
		end
	end

	def to_s
		"The rover is now in ( #{@x_coordinate}, #{@y_coordinate} ) facing -> #{@direction}\n
    FOR MORE INFORMATION - Use the key to move the ROVER\n"
	end

end

apollo = Rover.new

while true
	apollo.instructions
	puts apollo

	if apollo.input == "exit"
		exit
	end

end


#
#
#
#
#
#
#
#
#       # when 'l' && @direction == 'n'
#       #   return "The rover #{name} is facing West at points (#{@x}, #{@y})"
#       #   # Do something
#       # when 'l' && @direction == 's'
#       #   return "The rover #{name} is facing East at points (#{@x}, #{@y})"
#       #   # Do something
#       # when 'r' && @direction == 'n'
#       #   return "The rover #{name} is facing East at points (#{@x}, #{@y})"
#       #   # Do something
#       # when 'r' && @direction == 's'
#       #   return "The rover #{name} is facing West at points (#{@x}, #{@y})"
#       #   # Do something
#       # when 'l' && @direction == 'e'
#       #   return "The rover #{name} is facing North at points (#{@x}, #{@y})"
#       #   # Do something
#       # when 'r' && @direction == 'w'
#       #   return "The rover #{name} is facing North at points (#{@x}, #{@y})"
#       #   # Do something
#       # when 'l' && @direction == 'w'
#       #   return "The rover #{name} is facing South at points (#{@x}, #{@y})"
#       #   # Do something
#       # when 'r' && @direction == 'e'
#       #   return "The rover #{name} is facing South at points (#{@x}, #{@y})"
#       # when 'exit'
#       #   return exit
