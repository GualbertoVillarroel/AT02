class Circle
	def area(radius)
		result = radius * 2 * Math::PI
		puts"The area of the circle is: #{result}"
	end

	def perimeter(radius)
		result = radius * radius * Math::PI
		puts"The perimeter of the circle is: #{result}"
	end

end

puts"Put a radius:"
radius = gets.chomp.to_i
Circle.new.area(radius)
Circle.new.perimeter(radius)


