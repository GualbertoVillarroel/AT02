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