#Only for personal test

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

###################################################

class Person
	def data
		puts"Insert your name:"
		name = gets.chomp
		puts"Insert your age:"
		age = gets.chomp.to_i
	end
end


class Calculus
	def ageInMinutes age
		puts "The age in minutes is: #{age*365*24*60} "
	end
end

dir = Person.new.data
Calculus.new.ageInMinutes(dir)