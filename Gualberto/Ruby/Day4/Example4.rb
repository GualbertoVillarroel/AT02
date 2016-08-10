class Polygon
	@@sides = 10
	def self.sides
		@@sides
	end
end

puts Polygon.sides

class Triangle < Polygon	#Inheritance
	@@sides = 3
end

puts Triangle.sides
puts Polygon.sides

class Rectangle < Polygon		#Inheritance
	@@sides = 4
end

puts Polygon.sides
